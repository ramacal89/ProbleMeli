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

      SELECT d.d Dia, count(o.id)CantOrder, count(distinct i.ProductId) CantItems, isnull(sum(o.TotalAmount),0) MontoTotal
        FROM #Dates d
   LEFT JOIN [dbo].[Order] o on d.d =  CONVERT(date, o.OrderDate)
   LEFT JOIN [dbo].[Item] i on o.ItemId = I.Id 
	GROUP BY d.d
	ORDER BY d.d
	DROP TABLE #Dates

/*4.Por cada mes del 2019, se solicita el top 5 de usuarios que más vendieron ($) en la
  categoría Celulares. Se requiere el mes y año de análisis, nombre y apellido del
  vendedor, la cantidad vendida y el monto total transaccionado.*/

CREATE TABLE #Dates (
     d DATE,
     PRIMARY KEY (d)
)
DECLARE @dIncr2 DATE = '2019-01-01'
DECLARE @dEnd2 DATE = '2020-01-01'

WHILE ( @dIncr2 < @dEnd2 )
BEGIN
     INSERT INTO #Dates (d) VALUES( @dIncr2 )
     SELECT @dIncr2 = DATEADD(DAY, 1, @dIncr2 )
END --CREO LA TABLA DE TODOS LOS DIAS DEL AÑO, PODRIA HACER QUE LA TABLA TENGA MES Y DIA PERO REUTILIZO LO DEL PUNTO ANTERIOR
	--LUEGO POR CADA MES MUESTRO SU INFORMACION

      SELECT datepart(year,d.d) 'Year', 
			 datepart(month,d.d)'Month', 
			 c.Name Categoria,
			 s.Email, 
			 s.FirstName,
			 s.LastName, 
			 isnull(b.TotalAmount,0) TotalAmount
        FROM #Dates d 
	LEFT JOIN (
		SELECT Year,Month,SellerCustomerId,CategoryId, TotalAmount
		FROM (
		     SELECT year(orderdate)Year,month(orderdate)Month,i.CategoryId,i.SellerCustomerId, sum(o.TotalAmount)TotalAmount,Rank()
			 over (Partition By year(orderdate),month(orderdate)
				   ORDER BY sum(o.TotalAmount) DESC) AS RANK
		       FROM [dbo].[Order] o
		 INNER JOIN [dbo].[Item] i on i.id = o.itemid --MONTO TOTAL DE LAS ORDENES DE LOS ITEMS AGRUPADOS POR AÑO MES  Y SELLLER
		     WHERE i.CategoryId in (SELECT Id FROM Category WHERE Name like '%Celulares%') --RANKEO SOLO POR LAS CATEGORIAS QUE CONTENGAN LA PALABRA CELULARES
		   group by year(orderdate),month(orderdate),i.CategoryId,i.SellerCustomerId) as a --RANQUEO PARTICIONANDO POR AÑO Y MES PARA DETERMINAR LOS RANKING DE LOS SELLERS
		   WHERE rank <=5) as b --DE LO RANQUEADO ME QUEDO CON LOS QUE TIENEN RANK <= 5
		                        on datepart(year,d.d) =  b.year and datepart(month,d.d) =  b.month

	  LEFT JOIN [dbo].[Customer] s on b.SellerCustomerId= s.Id --JOINEO CON CUSTOMER PARA OBTENER SUS DATOS
	  LEFT JOIN [dbo].[Category] c on c.Id = b.CategoryId
		GROUP BY datepart(year,d.d), datepart(month,d.d),c.Name, isnull(b.TotalAmount,0), s.Email, s.FirstName, s.LastName --AGRUPO POR LOS DATOS CORRESPONDIENTES
	
	DROP TABLE #Dates


	SELECT [dbo].[Path_Category_Item](id,'')
	  FROM Category

	  SELECT Id 
	    FROM Category
	   WHERE Name like '%Celulares%'
/*Se solicita poblar una tabla con el precio y estado de los Items a fin del día (se
  puede resolver a través de StoredProcedure).
  a. Vale resaltar que en la tabla Item, vamos a tener únicamente el último estado
     informado por la PK definida.
  b. Esta información nos va a permitir realizar análisis para entender el
     comportamiento de los diferentes Items (por ejemplo evolución de Precios,
     cantidad de Items activos).*/

	 CREATE PROCEDURE [dbo].[StatusItemsEndDate]  
()  
AS  
BEGIN   
     
	
END  
GO