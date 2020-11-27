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
END

      SELECT datepart(year,d.d) 'Year', 
			 datepart(month,d.d)'Month', 
			 s.Email, 
			 s.FirstName,
			 s.LastName, 
			 isnull(sum(o.TotalAmount),0) TotalAmount
        FROM #Dates d
   LEFT JOIN [dbo].[Order] o on datepart(year,d.d) =  datepart(year,CONVERT(date, o.OrderDate)) and datepart(month,d.d) =  datepart(month,CONVERT(date, o.OrderDate))
   LEFT JOIN [dbo].[Item] i on o.ItemId = I.Id 
   LEFT JOIN [dbo].[Customer] s on i.SellerCustomerId= s.Id
	GROUP BY datepart(year,d.d), datepart(month,d.d),s.Email,s.FirstName,s.LastName
	 
	ORDER BY datepart(year,d.d), datepart(month,d.d), isnull(sum(o.TotalAmount),0)DESC 
	

	
	DROP TABLE #Dates


	

	SELECT Year,Month,SellerCustomerId, TotalAmount
	FROM (
		     SELECT year(orderdate)Year,month(orderdate)Month,i.SellerCustomerId, sum(o.TotalAmount)TotalAmount,Rank()
			 over (Partition By year(orderdate),month(orderdate),i.SellerCustomerId
				   ORDER BY sum(o.TotalAmount) DESC) AS RANK
		       FROM [dbo].[Order] o
		 INNER JOIN [dbo].[Item] i on i.id = o.itemid 
		   group by year(orderdate),month(orderdate),i.SellerCustomerId) as a 
		   WHERE rank <=5
		   --order by year(orderdate),month(orderdate), sum(o.TotalAmount) desc)


		   SELECT year(orderdate)Year,month(orderdate)Month,i.SellerCustomerId, sum(o.TotalAmount)TotalAmount
		       FROM [dbo].[Order] o
		 INNER JOIN [dbo].[Item] i on i.id = o.itemid 
		   group by year(orderdate),month(orderdate),i.SellerCustomerId


		  SELECT year(orderdate)Year,month(orderdate)Month,i.SellerCustomerId, o.TotalAmount,TotalAmount
		       FROM [dbo].[Order] o
		 INNER JOIN [dbo].[Item] i on i.id = o.itemid 
		 order by year(orderdate),month(orderdate),i.SellerCustomerId
	
	