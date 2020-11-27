USE [Test]
/* Respuestas de Negocio del ProbleMeli
   rcalvo
*/
/*1.Cantidad de usuarios donde su apellido comience con la letra ‘M’.*/

      SELECT count(1) CantUsrMLastName
        FROM [dbo].[Customer]
       WHERE LastName like 'M%'

/*2.Listado de los usuarios que cumplan años en el día de la fecha (hoy)*/

      SELECT Email,
		     FirstName,
		     LastName,
		     g.Name Gender
	    FROM [dbo].[Customer] c
  INNER JOIN Gender g on g.id = c.GenderId
       WHERE BirthDate = CONVERT(date, getdate())


/*3. Por día se necesita, cantidad de ventas realizadas, cantidad de productos vendidos
  y monto total transaccionado para el mes de Enero del 2020.*/
  IF OBJECT_ID(N'tempdb..#Dates') IS NOT NULL
BEGIN
DROP TABLE #Dates --VERIFICO SI EXISTE LA TABLA TEMPORAL DATES, SI EXISTE LA LIMPIO
END
GO
CREATE TABLE #Dates (
     d DATE,
     PRIMARY KEY (d)
)
DECLARE @dIncr DATE = '2020-01-01'
DECLARE @dEnd DATE = '2020-02-01'

WHILE ( @dIncr < @dEnd )
BEGIN
     INSERT INTO #Dates (d) VALUES( @dIncr )
     SELECT @dIncr = DATEADD(DAY, 1, @dIncr )
END --CREO UNA TABLA CON TODOS LOS DIAS DE ENERO, Y LUEGO POR CADA DIA INDICO SU INFORMACION

      SELECT d.d Dia, count(o.id)CantOrder, count(distinct i.ProductId) CantProduct, isnull(sum(o.TotalAmount),0) MontoTotal
        FROM #Dates d
   LEFT JOIN [dbo].[Order] o on d.d =  CONVERT(date, o.OrderDate) --JOINEO LAS ORDENES CON EL DIA
   LEFT JOIN [dbo].[Item] i on o.ItemId = I.Id --DE CADA ORDEN ME FIJO EL ITEM PARA SACAR LA CANTIDAD DE PRODUCTOS
	GROUP BY d.d
	ORDER BY d.d
	DROP TABLE #Dates

/*4.Por cada mes del 2019, se solicita el top 5 de usuarios que más vendieron ($) en la
  categoría Celulares. Se requiere el mes y año de análisis, nombre y apellido del
  vendedor, la cantidad vendida y el monto total transaccionado.
  PREMISA: Se coinsidera categoria Celulares ya sea la categoria final del item asi como tambien sus intermedias.
  */

IF OBJECT_ID(N'tempdb..#Dates') IS NOT NULL
BEGIN
DROP TABLE #Dates --VERIFICO SI EXISTE LA TABLA TEMPORAL DATES, SI EXISTE LA LIMPIO
END
GO
CREATE TABLE #Dates (             --CREO LA TABLA DE TODOS LOS DIAS DEL AÑO, PODRIA HACER QUE LA TABLA TENGA MES Y DIA PERO REUTILIZO LO DEL PUNTO ANTERIOR								   
     d DATE,					  --LUEGO POR CADA MES MUESTRO SU INFORMACION
     PRIMARY KEY (d)
)
DECLARE @dIncr2 DATE = '2019-01-01'
DECLARE @dEnd2 DATE = '2020-01-01'

WHILE ( @dIncr2 < @dEnd2 )
BEGIN
     INSERT INTO #Dates (d) VALUES( @dIncr2 )
     SELECT @dIncr2 = DATEADD(DAY, 1, @dIncr2 )
END

      SELECT datepart(year,d.d) 'Year', 
			 datepart(month,d.d)'Month', 
			 s.Email, 
			 s.FirstName,
			 s.LastName, 
			 isnull(b.QuantitySold,0) QuantitySold,
			 isnull(b.TotalAmount,0) TotalAmount
        FROM #Dates d --TABLA CON TODOS LOS DIAS DEL AÑO
	LEFT JOIN (
		SELECT Year,Month,SellerCustomerId,QuantitySold,TotalAmount
		FROM (
			  SELECT year(orderdate)Year,month(orderdate)Month,i.SellerCustomerId,sum(o.Quantity)QuantitySold, sum(o.TotalAmount)TotalAmount,Rank()
			    over (PARTITION BY year(orderdate),month(orderdate)
					      ORDER BY sum(o.TotalAmount) DESC) AS RANK
		       FROM [dbo].[Order] o
		 INNER JOIN [dbo].[Item] i on i.id = o.itemid --MONTO TOTAL DE LAS ORDENES DE LOS ITEMS AGRUPADOS POR AÑO MES  Y SELLLER
			  WHERE i.CategoryId in (SELECT Id FROM Category WHERE [dbo].[Path_Category_Item](id,'') like '%Celulares%') --FILTRO LOS ITEMS QUE EN SU PATH TENGA CELULAR COMO CATEGORIA. ESTO LO HAGO PARA VER SI DENTRO DE SU CADENA DE PATH ESTA LA CATEGORIA. 
		   GROUP BY year(orderdate),month(orderdate),i.SellerCustomerId	  										       --SI SERIA LA CATEGORIA FINAL IRIA DIRECTO CON LA QUE MATCHEA CON EL ID PERO EN ESTE CASO SE CONTEMPLA CATEGORIAS INTERMEDIAS 
			  ) as a --RANQUEO PARTICIONANDO POR AÑO Y MES PARA DETERMINAR LOS RANKING DE LOS SELLERS
		 WHERE rank <=5) as b --DE LO RANQUEADO ME QUEDO CON LOS QUE TIENEN RANK <= 5
		                        on datepart(year,d.d) =  b.year and datepart(month,d.d) =  b.month

	  LEFT JOIN [dbo].[Customer] s on b.SellerCustomerId= s.Id --JOINEO CON CUSTOMER PARA OBTENER SUS DATOS
		GROUP BY datepart(year,d.d), datepart(month,d.d), isnull(b.QuantitySold,0), isnull(b.TotalAmount,0), s.Email, s.FirstName, s.LastName --AGRUPO POR LOS DATOS CORRESPONDIENTES
		ORDER BY datepart(year,d.d), datepart(month,d.d), isnull(b.TotalAmount,0) DESC--ORDENO PARA MOSTRAR LOS DATOS

	DROP TABLE #Dates

	--FUNCION RECURSIVA PARA OBTENER EL PATH, CHEQUEAR PARA VER COMO FUNCIONA--
	SELECT [dbo].[Path_Category_Item](id,'')
	  FROM Category

/*5.Se solicita poblar una tabla con el precio y estado de los Items a fin del día (se
  puede resolver a través de StoredProcedure).
  a. Vale resaltar que en la tabla Item, vamos a tener únicamente el último estado
     informado por la PK definida.
  b. Esta información nos va a permitir realizar análisis para entender el
     comportamiento de los diferentes Items (por ejemplo evolución de Precios,
     cantidad de Items activos).*/
	 --PREMISA: Solamente se genera el Stored Procedure, Falta programar el JOB para que lo ejecute todos los dias a una hora especificada.
GO
CREATE PROCEDURE [dbo].[ItemToITemHistoryDay] (@Date DateTime)
AS  
BEGIN   --SACO LA FOTO DEL DIA DE TODOS LOS ITEMS, INCLUYO SOLAMENTE LOS QUE TERMINATIONDATE ES NULO O ES IGUAL AL DIA DE LA FECHA PARA NO REPETIR INFORMACION QUE YA NO SE VA A ACTUALIZAR.
	IF (@date is not null)
	   BEGIN
	   IF NOT EXISTS (SELECT * FROM ItemHistory WHERE CreationDate = @Date)
	      BEGIN
			INSERT INTO ItemHistory
			SELECT Id,Price,TerminationDate,CONVERT(date, @Date)
			  FROM Item
		     WHERE TerminationDate is null or TerminationDate = CONVERT(date, @Date)
		  END
	   END
END  
GO
--Ejecucion del Stored--
DECLARE @RC int
DECLARE @Date datetime

-- TODO: Establezca los valores de los parámetros aquí.

EXECUTE @RC = [dbo].[ItemToITemHistoryDay] 
   '2020-11-27' --Aca pasaria por parametro el JOB el dia de la fecha.
GO

/*6.Desde IT nos comentan que la tabla de Categorías tiene un issue ya que cuando
  generan modificaciones de una categoría se genera un nuevo registro con la misma 
  PK en vez de actualizar el ya existente. Teniendo en cuenta que tenemos una
  columna de Fecha de LastUpdated, se solicita crear una nueva tabla y poblar la
  misma sin ningún tipo de duplicados garantizando la calidad y consistencia de los
  datos.*/

  --Si es primary key, por un tema de constrait, la misma base no te permite crear claves duplicadas.
  --PREMISA: Base de datos sin constraint CategoryDupli

  SELECT DISTINCT id, parentcategoryid,name,lastupdate,creationdate,active  --Con el distinct me aseguro de no tener duplicados en caso que coincida el lastupdate y el creation date
     INTO [dbo].[CategorySinDupli] --Creacion de nueva Tabla CategorySinDupli
     FROM(SELECT *,Rank()
     over (PARTITION BY Id
	           ORDER BY LastUpdate DESC,CreationDate DESC) AS RANK --Ordeno por lastupdate descendiente para tener el menor, en caso de que hayan dos lastupdate iguales me quedo con el creado mas reciente
     FROM [dbo].[CategoryDupli])as dupliRank
	WHERE rank <= 1 --Con esto me aseguro de traer el primero del ranking
	
	--Para garantizar la calidad y consistencia de la misma luego hay que generar las constrait ya hechas para el modelo final del script Create_Tables tabla Category.
	


     
  