USE [ProbleMeli]
GO

/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 25/11/2020 23:41:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
------------------INICIO - CREACION DE LA TABLA CUSTOMER------------------
CREATE TABLE [dbo].[Customer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GenderId] int NOT NULL,
	[UserTypeId] int NOT NULL,
	[Username] varchar(max) NOT NULL,
	[Name] varchar(max) NOT NULL,
	[Address] varchar(max) NOT NULL,
	[BirthDate] datetime NOT NULL,
	[PhoneNumber] int NOT NULL,
	[TerminationDate] datetime NOT NULL,
	[CrationDate] datetime NOT NULL,

--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--CLAVES FORANEAS--
--CON LA TABLA USERTYPE--
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_UserType_UserTypeId] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserType] ([Id])
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_UserType_UserTypeId]
GO

--CON LA TABLA CUSTOMER--
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Gender_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Gender_GenderId]
------------------FIN - CREACION DE LA TABLA CUSTOMER------------------

------------------INICIO - CREACION DE LA TABLA USERTYPE---------------
CREATE TABLE [dbo].[UserType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] varchar(max) NOT NULL,
	[Description] varchar(max) NOT NULL,
	[Active] bit NOT NULL,

--CLAVES PRIMARIAS--
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------FIN - CREACION DE LA TABLA USERTYPE------------------



------------------INICIO - CREACION DE LA TABLA ORDER------------------
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[ItemId] int NOT NULL,
	[Quantity] varchar(max) NOT NULL,
	[TotalAmount] varchar(max) NOT NULL,
	
--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
--CLAVES FORANEAS--
--CON LA TABLA CUSTOMER--
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer_CustomerId]

--CON LA TABLA ITEM--
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Item_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Item_ItemId]
------------------FIN - CREACION DE LA TABLA ORDER---------------------

------------------INICIO - CREACION DE LA TABLA ITEM-------------------
CREATE TABLE [dbo].[Item](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] int NOT NULL,
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

--CLAVES FORANEAS--
--CON LA TABLA CATEGORY--
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category_CategoryId]


------------------FIN - CREACION DE LA TABLA ITEM------------------

------------------INICIO - CREACION DE LA TABLA CATEGORIA-------------------
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentCategoryId] int NOT NULL,
	[Name] varchar(max) NOT NULL,
	[LastUpdate] datetime NOT NULL,
	[CreationDate] datetime NOT NULL,

--CLAVES PRIMARIAS--
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--CLAVES FORANEAS--
--CON LA TABLA CATEGORY--
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_ParentCategory_ParentCategoryId] FOREIGN KEY([ParentCategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_ParentCategory_ParentCategoryId]

------------------FIN - CREACION DE LA TABLA ITEM------------------