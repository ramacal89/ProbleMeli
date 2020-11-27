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
END --CREO LA TABLA DE TODOS LOS DIAS DEL AÑO, PODRIA HACER QUE LA TABLA TENGA MES Y DIA PERO REUTILIZO LO DEL PUNTO DE ARRIBA

      SELECT datepart(year,d.d) 'Year', 
			 datepart(month,d.d)'Month', 
			 s.Email, 
			 s.FirstName,
			 s.LastName, 
			 isnull(b.TotalAmount,0) TotalAmount
        FROM #Dates d 
	LEFT JOIN (
		SELECT Year,Month,SellerCustomerId, TotalAmount
		FROM (
		     SELECT year(orderdate)Year,month(orderdate)Month,i.SellerCustomerId, sum(o.TotalAmount)TotalAmount,Rank()
			 over (Partition By year(orderdate),month(orderdate)
				   ORDER BY sum(o.TotalAmount) DESC) AS RANK
		       FROM [dbo].[Order] o
		 INNER JOIN [dbo].[Item] i on i.id = o.itemid 
		   group by year(orderdate),month(orderdate),i.SellerCustomerId) as a --Ranqueo particionando por año y mes
		   WHERE rank <=5) as b --Lo particionado me quedo solamente con los que tienen RANK <= 5
		                        on datepart(year,d.d) =  b.year and datepart(month,d.d) =  b.month

	  LEFT JOIN [dbo].[Customer] s on b.SellerCustomerId= s.Id --Joineo con customer para obtener sus datos

		GROUP BY datepart(year,d.d), datepart(month,d.d), isnull(b.TotalAmount,0), s.Email, s.FirstName, s.LastName --Agrupo por año, mes monto y los datos del seller
	

	
	DROP TABLE #Dates