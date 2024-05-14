
-------------------------------------------------
CREATE TABLE [dbo].[Categories] (
    [CategoryID]   INT           IDENTITY (1, 1) NOT NULL,
    [CategoryName] NVARCHAR (15) NOT NULL,
    [Description]  NTEXT         NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);
CREATE TABLE [dbo].[Customers] (
    [CustomerID]   NCHAR (5)     NOT NULL,
    [CompanyName]  NVARCHAR (40) NOT NULL,
    [ContactName]  NVARCHAR (30) NULL,
    [ContactTitle] NVARCHAR (30) NULL,
    [Address]      NVARCHAR (60) NULL,
    [City]         NVARCHAR (15) NULL,
    [Region]       NVARCHAR (15) NULL,
    [PostalCode]   NVARCHAR (10) NULL,
    [Country]      NVARCHAR (15) NULL,
    [Phone]        NVARCHAR (24) NULL,
    [Fax]          NVARCHAR (24) NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);
CREATE TABLE [dbo].[Products] (
    [ProductID]   INT           IDENTITY (1, 1) NOT NULL,
    [ProductName] NVARCHAR (40) NOT NULL,
    [CategoryID]  INT           NULL,
    [UnitPrice]   MONEY         CONSTRAINT [DF_Products_UnitPrice] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Categories] ([CategoryID])
);
---------------------------------------------------------
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Confections', N'Desserts, candies, and sweet breads')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Dairy Products', N'Cheeses')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Meat/Poultry', N'Prepared meats')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Produce', N'Dried fruit and bean curd')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Seafood', N'Seaweed and fish')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (16, N'', N'')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (17, N'21', N'222')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (18, N'21', N'222')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (19, N'21', N'222')
INSERT INTO [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (20, N'21', N'222')
SET IDENTITY_INSERT [dbo].[Categories] OFF


INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BLONP', N'Blondesddsl père et fils', N'Frédérique Citeaux', N'Marketing Manager', N'24, place Kléber', N'Strasbourg', NULL, N'67000', N'France', N'88.60.15.31', N'88.60.15.32')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BOLID', N'Bólido Comidas preparadas', N'Martín Sommer', N'Owner', N'C/ Araquil, 67', N'Madrid', NULL, N'28023', N'Spain', N'(91) 555 22 82', N'(91) 555 91 99')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BONAP', N'Bon app''', N'Laurence Lebihan', N'Owner', N'12, rue des Bouchers', N'Marseille', NULL, N'13008', N'France', N'91.24.45.40', N'91.24.45.41')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BOTTM', N'Bottom-Dollar Markets', N'Elizabeth Lincoln', N'Accounting Manager', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', N'Canada', N'(604) 555-4729', N'(604) 555-3745')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'BSBEV', N'B''s Beverages', N'Victoria Ashworth', N'Sales Representative', N'Fauntleroy Circus', N'London', NULL, N'EC2 5NT', N'UK', N'(171) 555-1212', NULL)
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CACTU', N'Cactus Comidas para llevar', N'Patricio Simpson', N'Sales Agent', N'Cerrito 333', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5555', N'(1) 135-4892')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CENTC', N'Centro comercial Moctezuma', N'Francisco Chang', N'Marketing Manager', N'Sierras de Granada 9993', N'México D.F.', NULL, N'05022', N'Mexico', N'(5) 555-3392', N'(5) 555-7293')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CHOPS', N'Chop-suey Chinese', N'Yang Wang', N'Owner', N'Hauptstr. 29', N'Bern', NULL, N'3012', N'Switzerland', N'0452-076545', NULL)
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'COMMI', N'Comércio Mineiro', N'Pedro Afonso', N'Sales Associate', N'Av. dos Lusíadas, 23', N'Sao Paulo', N'SP', N'05432-043', N'Brazil', N'(11) 555-7647', NULL)
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'CONSH', N'Consolidated Holdings', N'Elizabeth Brown', N'Sales Representative', N'Berkeley Gardens 12  Brewery', N'London', NULL, N'WX1 6LT', N'UK', N'(171) 555-2282', N'(171) 555-9199')
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (N'DRACD', N'Drachenblut Delikatessen', N'Sven Ottlieb', N'Order Administrator', N'Walserweg 21', N'Aachen', NULL, N'52066', N'Germany', N'0241-039123', N'0241-059428')


SET IDENTITY_INSERT [dbo].[Products] ON
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (1, N'Chai', 1, CAST(18.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (2, N'Chang', 1, CAST(19.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (3, N'Aniseed Syrup', 2, CAST(10.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, CAST(22.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, CAST(21.3500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (6, N'Grandma''s Boysenberry Spread', 2, CAST(25.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 7, CAST(30.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (8, N'Northwoods Cranberry Sauce', 2, CAST(40.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (9, N'Mishi Kobe Niku', 6, CAST(97.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (10, N'Ikura', 8, CAST(31.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (11, N'Queso Cabrales', 4, CAST(21.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (12, N'Queso Manchego La Pastora', 4, CAST(38.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (13, N'Konbu', 8, CAST(6.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (14, N'Tofu', 7, CAST(23.2500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (15, N'Genen Shouyu', 2, CAST(15.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (16, N'Pavlova', 3, CAST(17.4500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (17, N'Alice Mutton', 6, CAST(39.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (18, N'Carnarvon Tigers', 8, CAST(62.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (19, N'Teatime Chocolate Biscuits', 3, CAST(9.2000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (20, N'Sir Rodney''s Marmalade', 3, CAST(81.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (21, N'Sir Rodney''s Scones', 3, CAST(10.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (22, N'Gustaf''s Knäckebröd', 5, CAST(21.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (23, N'Tunnbröd', 5, CAST(9.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (24, N'Guaraná Fantástica', 1, CAST(4.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 3, CAST(14.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (26, N'Gumbär Gummibärchen', 3, CAST(31.2300 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (27, N'Schoggi Schokolade', 3, CAST(43.9000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (28, N'Rössle Sauerkraut', 7, CAST(45.6000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (29, N'Thüringer Rostbratwurst', 6, CAST(123.7900 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (30, N'Nord-Ost Matjeshering', 8, CAST(25.8900 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (31, N'Gorgonzola Telino', 4, CAST(12.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (32, N'Mascarpone Fabioli', 4, CAST(32.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (33, N'Geitost', 4, CAST(2.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (34, N'Sasquatch Ale', 1, CAST(14.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (35, N'Steeleye Stout', 1, CAST(18.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (36, N'Inlagd Sill', 8, CAST(19.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (37, N'Gravad lax', 8, CAST(26.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (38, N'Côte de Blaye', 1, CAST(263.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (39, N'Chartreuse verte', 1, CAST(18.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (40, N'Boston Crab Meat', 8, CAST(18.4000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (41, N'Jack''s New England Clam Chowder', 8, CAST(9.6500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (42, N'Singaporean Hokkien Fried Mee', 5, CAST(14.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (43, N'Ipoh Coffee', 1, CAST(46.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (44, N'Gula Malacca', 2, CAST(19.4500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (45, N'Rogede sild', 8, CAST(9.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (46, N'Spegesild', 8, CAST(12.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (47, N'Zaanse koeken', 3, CAST(9.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (48, N'Chocolade', 3, CAST(12.7500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (49, N'Maxilaku', 3, CAST(20.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (50, N'Valkoinen suklaa', 3, CAST(16.2500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (51, N'Manjimup Dried Apples', 7, CAST(53.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (52, N'Filo Mix', 5, CAST(7.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (53, N'Perth Pasties', 6, CAST(32.8000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (54, N'Tourtière', 6, CAST(7.4500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (55, N'Pâté chinois', 6, CAST(24.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (56, N'Gnocchi di nonna Alice', 5, CAST(38.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (57, N'Ravioli Angelo', 5, CAST(19.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (58, N'Escargots de Bourgogne', 8, CAST(13.2500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (59, N'Raclette Courdavault', 4, CAST(55.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (60, N'Camembert Pierrot', 4, CAST(34.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (61, N'Sirop d''érable', 2, CAST(28.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (62, N'Tarte au sucre', 3, CAST(49.3000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (63, N'Vegie-spread', 2, CAST(43.9000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (64, N'Wimmers gute Semmelknödel', 5, CAST(33.2500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, CAST(21.0500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, CAST(17.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (67, N'Laughing Lumberjack Lager', 1, CAST(14.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (68, N'Scottish Longbreads', 3, CAST(12.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (69, N'Gudbrandsdalsost', 4, CAST(36.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (70, N'Outback Lager', 1, CAST(15.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (71, N'Flotemysost', 4, CAST(21.5000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (72, N'Mozzarella di Giovanni', 4, CAST(34.8000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (73, N'Röd Kaviar', 8, CAST(15.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (74, N'Longlife Tofu', 7, CAST(10.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (75, N'Rhönbräu Klosterbier', 1, CAST(7.7500 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (76, N'Lakkalikööri', 1, CAST(18.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (77, N'Original Frankfurter grüne Soße', 2, CAST(13.0000 AS Money))
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (78, N'dtrttr', 2, CAST(65.0000 AS Money))
SET IDENTITY_INSERT [dbo].[Products] OFF