USE [ProbleMeli]
GO

/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 25/11/2020 23:41:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
------------------------------- INICIO -  CREACION DE TABLAS -------------------------------
------------------INICIO - CREACION DE LA TABLA CUSTOMER------------------
CREATE TABLE [dbo].[Customer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GenderId] int NOT NULL,
	[Email] varchar(max) NOT NULL,
	[FirstName] varchar(max) NOT NULL,
	[LastName] varchar(max) NOT NULL,
	[Address] varchar(max) NOT NULL,
	[BirthDate] date NOT NULL,
	[PhoneNumber] varchar(max) NOT NULL,
	[CreationDate] datetime NOT NULL,

--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA CUSTOMER------------------

------------------INICIO - CREACION DE LA TABLA ORDER------------------
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BuyerCustomerId] [bigint] NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[Quantity] int NOT NULL,
	[TotalAmount] decimal(18,2) NOT NULL,
	[OrderDate] datetime NOT NULL,
	
--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA ORDER---------------------

------------------INICIO - CREACION DE LA TABLA ITEM-------------------
CREATE TABLE [dbo].[Item](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] int NOT NULL,
	[SellerCustomerId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Description] varchar(max) NOT NULL,
	[Price] decimal(18,2) NOT NULL,
	[TerminationDate] datetime NULL,
	[CreationDate] datetime NULL,
	
--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA ITEM------------------
------------------INICIO - CREACION DE LA TABLA ITEMHISTORY-------------------
CREATE TABLE [dbo].[ItemHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NOT NULL,
	[Price] decimal(18,2) NOT NULL,
	[TerminationDate] datetime NULL,
	[CreationDate] datetime NULL,
	
--CLAVES PRIMARIAS--
 CONSTRAINT [PK_ItemHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA ITEMHistory------------------

------------------INICIO - CREACION DE LA TABLA PRODUCT-------------
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SKU] varchar(max) NOT NULL,
	[Description]  [nvarchar](max) NOT NULL,
	[Active] bit NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA PRODUCT --------------

------------------INICIO - CREACION DE LA TABLA GENDER-------------
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA GENDER--------------

------------------INICIO - CREACION DE LA TABLA CATEGORIA-------------------
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentCategoryId] int NULL,
	[Name] nvarchar(max) NOT NULL,
	[LastUpdate] datetime NOT NULL,
	[CreationDate] datetime NOT NULL,
	[Active] bit NOT NULL
	
--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA CATEGORIA------------------
------------------------------- FIN - CREACION DE TABLAS -------------------------------


------------------------------- INICIO - CREACION DE CLAVES FORANEAS -------------------------------
------------------INICIO - CREACION DE CLAVES FORANEAS CUSTOMER------------------

--CON LA TABLA CUSTOMER--
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Gender_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Gender_GenderId]
------------------FIN - CREACION DE CLAVES FORANEAS CUSTOMER------------------

------------------INICIO - CREACION DE CLAVES FORANEAS ORDER------------------
--CON LA TABLA CUSTOMER--
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer_BuyerCustomerId] FOREIGN KEY([BuyerCustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer_BuyerCustomerId]

--CON LA TABLA ITEM--
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Item_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Item_ItemId]
------------------FIN - CREACION DE CLAVES FORANEAS ORDER---------------------

------------------INICIO - CREACION DE CLAVES FORANEAS ITEM-------------------
--CON LA TABLA CATEGORY--
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category_CategoryId]
--CON LA TABLA CUSTOMER--
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Customer_SellerCustomerId] FOREIGN KEY([SellerCustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Customer_SellerCustomerId]
--CON LA TABLA PRODUCT--
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Product_ProductId]
------------------FIN - CREACION DE CLAVES FORANEAS ITEM------------------
------------------INICIO - CREACION DE CLAVES FORANEAS ITEMHISTORY-------------------
--CON LA TABLA CATEGORY--
ALTER TABLE [dbo].[ItemHistory]  WITH CHECK ADD  CONSTRAINT [FK_ItemHistory_Item_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_ItemHistory_Item_ItemId]
------------------FIN - CREACION DE CLAVES FORANEAS ITEMHiSTORY------------------

------------------INICIO - CREACION DE CLAVES FORANEAS CATEGORIA-------------------

--CON LA TABLA CATEGORY--
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_ParentCategory_ParentCategoryId] FOREIGN KEY([ParentCategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_ParentCategory_ParentCategoryId]
GO
------------------FIN - CREACION DE CLAVES FORANEAS CATEGORIA-------------------
------------------INICIO - CREACION DE FUNCIONES -----------------------
------------------OBTIENE EL PATH DE UNA CATEGORIA-----------------------
CREATE FUNCTION [dbo].[Path_Category_Item](@CategoryId int, @Path varchar(500))

RETURNS varchar(500)

AS BEGIN

      DECLARE @ParentCategoryId int;

      SELECT @CategoryId = c.Id
			, @Path = c.Name
			, @ParentCategoryId = ISNULL(c.ParentCategoryId,-1)

                  FROM Category c
				  WHERE c.Id = @CategoryId

      if (@ParentCategoryId >0) begin

            RETURN dbo.Path_Category_Item(@ParentCategoryId,@Path) + '>' + @Path

            end

      RETURN @Path

END
------------------FIN - CREACION DE FUNCIONES -----------------------




