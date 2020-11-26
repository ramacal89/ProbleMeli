DROP TABLE [dbo].[UserType]
DROP TABLE [dbo].[Order]
DROP TABLE [dbo].[Item]
DROP TABLE [dbo].[Gender]
DROP TABLE [dbo].[Customer]
DROP TABLE [dbo].[Category]
DROP TABLE [dbo].[Product]
DROP FUNCTION [dbo].[Path_Category_Item]

INSERT INTO[dbo].[Category] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ipsum.dolor.sit@sitametluctus.com','Vincent','Castro','Ap #442-543 Ultricies St.','1973-12-20','16670922 1136',getdate())
INSERT INTO [dbo].[Category] VALUES (null,'Tecnología', getdate(),getdate(),1)

INSERT INTO [dbo].[Item] VALUES (ROUND(RAND()*1000000000,0),'iPhone 11 64 GB Negro',1);
INSERT INTO ITEM VALUES (3,FLOOR(RAND()*(200-1)+1),FLOOR(RAND()*(49-1)+1),'No te pierdas este telefono Unico Maquinola',FLOOR(RAND()*(100000-30000)+30000),null,dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2)

declare @FromDate datetime = '2020-01-01'
declare @ToDate datetime = '2020-11-11'
declare @FromDate2 datetime = '2018-01-01'
declare @ToDate2 datetime = '2020-11-26'
INSERT INTO [dbo].[Item] VALUES (3,
FLOOR(RAND()*(200-1)+1),
FLOOR(RAND()*(49-1)+1),
'No te pierdas este telefono Unico Maquinola',
FLOOR(RAND()*(100000-30000)+30000),
dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate),
dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))

SELECT * FROM Category


------------------INICIO - CREACION DE LA TABLA USERTYPE---------------
--CREATE TABLE [dbo].[UserType](
--	[Id] int IDENTITY(1,1) NOT NULL,
--	[Name] varchar(max) NOT NULL,
--	[Description] varchar(max) NOT NULL,
--	[Active] bit NOT NULL,

----CLAVES PRIMARIAS--
-- CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
------------------FIN - CREACION DE LA TABLA USERTYPE------------------

--CON LA TABLA USERTYPE--
--ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_UserType_UserTypeId] FOREIGN KEY([UserTypeId])
--REFERENCES [dbo].[UserType] ([Id])
--GO

--ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_UserType_UserTypeId]
--GO


SELECT * FROM [Category]