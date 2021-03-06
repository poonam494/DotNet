USE [master]

CREATE DATABASE [Zagroo] ; 

GO
USE [Zagroo]
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderSummary_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderSummary_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  OrderSummary.OrderId,OrderSummary.CustomerId,OrderSummary.HotelId,OrderSummary.GrandTotal,OrderSummary.ServiceTax,OrderSummary.DeliveryCharges,OrderSummary.Discount,OrderSummary.PayableAmt'
	 SET @sql = @sql  + ' FROM OrderSummary'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderDetail_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  OrderDetail.OrderDetailId,OrderDetail.OrderId,OrderDetail.ItemName,OrderDetail.Price,OrderDetail.Quantity,OrderDetail.Total'
	 SET @sql = @sql  + ' FROM OrderDetail'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuSubCategory_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuSubCategory_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  MenuSubCategory.SubCategoryId,MenuSubCategory.SubCategoryName,MenuSubCategory.CategoryId'
	 SET @sql = @sql  + ' FROM MenuSubCategory'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuItem_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuItem_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  MenuItem.ItemId,MenuItem.ItemName,MenuItem.CategoryId,MenuItem.SubCategoryId,MenuItem.Price,MenuItem.HotelId'
	 SET @sql = @sql  + ' FROM MenuItem'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Location_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Location_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  Location.LocationId,Location.LocationName,Location.CityId'
	 SET @sql = @sql  + ' FROM Location'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuCategory_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuCategory_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  MenuCategory.CategoryId,MenuCategory.CategoryName'
	 SET @sql = @sql  + ' FROM MenuCategory'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_HotelCuisine_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_HotelCuisine_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  HotelCuisine.HotelId,HotelCuisine.Cuisine'
	 SET @sql = @sql  + ' FROM HotelCuisine'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hotel_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Hotel_Get]
 (
	 @WHERE Varchar(4000),
	 @CuisineId varchar = ''
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  Hotel.HotelId,Hotel.Name,Hotel.CityId,Hotel.LocationId,Hotel.Address,Hotel.Image,Hotel.Veg,Hotel.NonVeg,Hotel.HomeDelivery,Hotel.MinOrderValue,Hotel.OpenTime,Hotel.DeliveryTime,Hotel.Tax,Hotel.DeliveryCharge,Hotel.DicountOffer,Hotel.Email,Hotel.ContactNo'
	 SET @sql = @sql  + ' FROM Hotel'
	 if(@CuisineId <> '')
	 begin
		SET @sql = @sql  + ' inner join HotelCuisine HC on HC.HotelId = Hotel.HotelId '
		SET @sql = @sql  + ' inner join Cuisine C on C.CuisineId = HC.CuisineId '
	 end 
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerDetail_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_CustomerDetail_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  CustomerDetail.CustId,CustomerDetail.Name,CustomerDetail.Email,CustomerDetail.ContactNo'
	 SET @sql = @sql  + ' FROM CustomerDetail'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cuisine_Get]    Script Date: 05/07/2014 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ SELECT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Cuisine_Get]
 (
	 @WHERE Varchar(4000)
 )
 AS
 BEGIN
	 DECLARE @sql nvarchar(4000);SET @sql='';
	 SELECT @WHERE = RTRIM(LTRIM(IsNull(@WHERE,'')));

	 SET @sql = @sql  + ' SELECT  Cuisine.CuisineId,Cuisine.CuisineName'
	 SET @sql = @sql  + ' FROM Cuisine'
	 SET @sql = @sql  + ' WHERE 1=1 '

	 IF (@WHERE<>'') 
	 BEGIN 
		 SET @sql = @sql  + @WHERE; 
	 END 

	 EXECUTE sp_executesql @sql; 

 END
GO
/****** Object:  Table [dbo].[CustomerDetail]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerDetail](
	[CustId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[ContactNo] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Customer__049E3AA94F7CD00D] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerDetail] ON
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (1, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (2, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (3, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (4, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (5, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (6, N'vaishali', N'vaishaligohil22@gmail.com', N'12143214')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (7, N'vaishali', N'vaishaligohil22@gmail.com', N'12143214')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (8, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (9, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (10, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (11, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (12, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (13, N'vaishali', N'', N'')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (14, N'vaishali', N'', N'')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (15, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (16, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (17, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (18, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (19, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (20, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (21, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (22, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (23, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (24, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (25, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
INSERT [dbo].[CustomerDetail] ([CustId], [Name], [Email], [ContactNo]) VALUES (26, N'vaishali', N'vaishaligohil22@gmail.com', N'9987662396')
SET IDENTITY_INSERT [dbo].[CustomerDetail] OFF
/****** Object:  Table [dbo].[Cuisine]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cuisine](
	[CuisineId] [int] IDENTITY(1,1) NOT NULL,
	[CuisineName] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Cuisine__B1C3E7CB7F60ED59] PRIMARY KEY CLUSTERED 
(
	[CuisineId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cuisine] ON
INSERT [dbo].[Cuisine] ([CuisineId], [CuisineName]) VALUES (1, N'indian')
INSERT [dbo].[Cuisine] ([CuisineId], [CuisineName]) VALUES (2, N'italian')
INSERT [dbo].[Cuisine] ([CuisineId], [CuisineName]) VALUES (3, N'pizza')
INSERT [dbo].[Cuisine] ([CuisineId], [CuisineName]) VALUES (4, N'fast food')
INSERT [dbo].[Cuisine] ([CuisineId], [CuisineName]) VALUES (5, N'north indian')
INSERT [dbo].[Cuisine] ([CuisineId], [CuisineName]) VALUES (6, N'sea-food')
SET IDENTITY_INSERT [dbo].[Cuisine] OFF
/****** Object:  Table [dbo].[City]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](20) NOT NULL,
 CONSTRAINT [PK__City__F2D21B7607020F21] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (1, N'Mumbai')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (2, N'Delhi')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (3, N'Pune')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (4, N'Banglore')
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (5, N'Manglore')
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[MenuCategory]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](20) NOT NULL,
 CONSTRAINT [PK__MenuCate__19093A0B0AD2A005] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MenuCategory] ON
INSERT [dbo].[MenuCategory] ([CategoryId], [CategoryName]) VALUES (1, N'POPULAR')
INSERT [dbo].[MenuCategory] ([CategoryId], [CategoryName]) VALUES (2, N'VEG')
INSERT [dbo].[MenuCategory] ([CategoryId], [CategoryName]) VALUES (3, N'NONVEG')
SET IDENTITY_INSERT [dbo].[MenuCategory] OFF
/****** Object:  Table [dbo].[Location]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](20) NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK__Location__E7FEA49703317E3D] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([LocationId], [LocationName], [CityId]) VALUES (1, N'Malad', 1)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[MenuSubCategory]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuSubCategory](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](20) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK__MenuSubC__26BE5B190F975522] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MenuSubCategory] ON
INSERT [dbo].[MenuSubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (1, N'POPULAR', 1)
INSERT [dbo].[MenuSubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (2, N'BIRYANI', 1)
INSERT [dbo].[MenuSubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (3, N'CAKES', 1)
SET IDENTITY_INSERT [dbo].[MenuSubCategory] OFF
/****** Object:  StoredProcedure [dbo].[sp_Cuisine_Delete]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Cuisine_Delete]
 (
	 @CuisineId int
 )
 AS
 BEGIN
	 DELETE FROM Cuisine
	 WHERE CuisineId =@CuisineId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerDetail_Delete]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_CustomerDetail_Delete]
 (
	 @CustId int
 )
 AS
 BEGIN
	 DELETE FROM CustomerDetail
	 WHERE CustId =@CustId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cuisine_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Cuisine_Update]
 (
	 @CuisineId int,
	 @CuisineName varchar(20)
 )
 AS
 BEGIN
	 UPDATE Cuisine SET 	 CuisineName=@CuisineName
	 WHERE CuisineId=@CuisineId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Cuisine_Insert]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Cuisine_Insert]
 (
	 @CuisineId int,
	 @CuisineName varchar(20)
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM Cuisine WHERE CuisineId=@CuisineId AND CuisineName=@CuisineName )
	 BEGIN 
		 INSERT INTO Cuisine(CuisineName)
		 VALUES (@CuisineName)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerDetail_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_CustomerDetail_Update]
 (
	 @CustId int,
	 @Name varchar(50),
	 @Email varchar(50),
	 @ContactNo varchar(10)
 )
 AS
 BEGIN
	 UPDATE CustomerDetail SET 	 Name=@Name,Email=@Email,ContactNo=@ContactNo
	 WHERE CustId=@CustId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerDetail_Insert]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_CustomerDetail_Insert]
 (
	 @CustId int,
	 @Name varchar(50),
	 @Email varchar(50),
	 @ContactNo varchar(10),
	 @Id int output
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM CustomerDetail WHERE CustId=@CustId AND Name=@Name AND Email=@Email AND ContactNo=@ContactNo )
	 BEGIN 
		 INSERT INTO CustomerDetail(Name,Email,ContactNo)
		 VALUES (@Name,@Email,@ContactNo)
		 SELECT @ID = SCOPE_IDENTITY()
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuCategory_Delete]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuCategory_Delete]
 (
	 @CategoryId int
 )
 AS
 BEGIN
	 DELETE FROM MenuCategory
	 WHERE CategoryId =@CategoryId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuCategory_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuCategory_Update]
 (
	 @CategoryId int,
	 @CategoryName varchar(20)
 )
 AS
 BEGIN
	 UPDATE MenuCategory SET 	 CategoryName=@CategoryName
	 WHERE CategoryId=@CategoryId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuCategory_Insert]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuCategory_Insert]
 (
	 @CategoryId int,
	 @CategoryName varchar(20)
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM MenuCategory WHERE CategoryId=@CategoryId AND CategoryName=@CategoryName )
	 BEGIN 
		 INSERT INTO MenuCategory(CategoryName)
		 VALUES (@CategoryName)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuSubCategory_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuSubCategory_Update]
 (
	 @SubCategoryId int,
	 @SubCategoryName varchar(20),
	 @CategoryId int
 )
 AS
 BEGIN
	 UPDATE MenuSubCategory SET 	 SubCategoryName=@SubCategoryName,CategoryId=@CategoryId
	 WHERE SubCategoryId=@SubCategoryId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuSubCategory_Insert]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuSubCategory_Insert]
 (
	 @SubCategoryId int,
	 @SubCategoryName varchar(20),
	 @CategoryId int
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM MenuSubCategory WHERE SubCategoryId=@SubCategoryId AND SubCategoryName=@SubCategoryName AND CategoryId=@CategoryId )
	 BEGIN 
		 INSERT INTO MenuSubCategory(SubCategoryName,CategoryId)
		 VALUES (@SubCategoryName,@CategoryId)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuSubCategory_Delete]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuSubCategory_Delete]
 (
	 @SubCategoryId int
 )
 AS
 BEGIN
	 DELETE FROM MenuSubCategory
	 WHERE SubCategoryId =@SubCategoryId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Location_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Location_Update]
 (
	 @LocationId int,
	 @LocationName varchar(20),
	 @CityId int
 )
 AS
 BEGIN
	 UPDATE Location SET 	 LocationName=@LocationName,CityId=@CityId
	 WHERE LocationId=@LocationId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Location_Insert]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Location_Insert]
 (
	 @LocationId int,
	 @LocationName varchar(20),
	 @CityId int
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM Location WHERE LocationId=@LocationId AND LocationName=@LocationName AND CityId=@CityId )
	 BEGIN 
		 INSERT INTO Location(LocationName,CityId)
		 VALUES (@LocationName,@CityId)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Location_Delete]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Location_Delete]
 (
	 @LocationId int
 )
 AS
 BEGIN
	 DELETE FROM Location
	 WHERE LocationId =@LocationId
 END
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[CityId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[Address] [varchar](400) NOT NULL,
	[Image] [varchar](200) NOT NULL,
	[Veg] [bit] NOT NULL,
	[NonVeg] [bit] NOT NULL,
	[HomeDelivery] [bit] NOT NULL,
	[MinOrderValue] [int] NOT NULL,
	[OpenTime] [varchar](100) NOT NULL,
	[DeliveryTime] [int] NOT NULL,
	[Tax] [decimal](18, 0) NULL,
	[DeliveryCharge] [decimal](18, 0) NULL,
	[DicountOffer] [decimal](18, 0) NULL,
	[Email] [varchar](100) NOT NULL,
	[ContactNo] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Hotel__46023BDF145C0A3F] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON
INSERT [dbo].[Hotel] ([HotelId], [Name], [CityId], [LocationId], [Address], [Image], [Veg], [NonVeg], [HomeDelivery], [MinOrderValue], [OpenTime], [DeliveryTime], [Tax], [DeliveryCharge], [DicountOffer], [Email], [ContactNo]) VALUES (1, N'Kareems', 1, 1, N'Malad West (Ramachandra Lane)', N'img/menu/NoImg.jpg', 1, 1, 1, 100, N' 12:00pm to 04:00pm', 150, CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'vaishaligohil22@yahoo.co.in', N'')
INSERT [dbo].[Hotel] ([HotelId], [Name], [CityId], [LocationId], [Address], [Image], [Veg], [NonVeg], [HomeDelivery], [MinOrderValue], [OpenTime], [DeliveryTime], [Tax], [DeliveryCharge], [DicountOffer], [Email], [ContactNo]) VALUES (2, N'Jain Subkuchh Food Plaza', 1, 1, N'Malad West (In Orbit)', N'img/menu/NoImg.jpg', 1, 0, 1, 150, N'11:00am to 11:00pm', 100, CAST(2 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'vaishaligohil22@yahoo.co.in', N'')
INSERT [dbo].[Hotel] ([HotelId], [Name], [CityId], [LocationId], [Address], [Image], [Veg], [NonVeg], [HomeDelivery], [MinOrderValue], [OpenTime], [DeliveryTime], [Tax], [DeliveryCharge], [DicountOffer], [Email], [ContactNo]) VALUES (3, N'Mad Bites', 1, 1, N'Powai (Chandivali Mhada)', N'img/menu/NoImg.jpg', 0, 1, 1, 200, N'08:00pm to 04:00am', 100, CAST(2 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'vaishaligohil22@yahoo.co.in', N'')
INSERT [dbo].[Hotel] ([HotelId], [Name], [CityId], [LocationId], [Address], [Image], [Veg], [NonVeg], [HomeDelivery], [MinOrderValue], [OpenTime], [DeliveryTime], [Tax], [DeliveryCharge], [DicountOffer], [Email], [ContactNo]) VALUES (4, N'Fine Fast Food', 1, 1, N'Malad West (S V Road)', N'img/menu/NoImg.jpg', 1, 0, 1, 50, N'11:00am to 11:00pm', 50, CAST(2 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'vaishaligohil22@yahoo.co.in', N'')
SET IDENTITY_INSERT [dbo].[Hotel] OFF
/****** Object:  Table [dbo].[MenuItem]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuItem](
	[ItemId] [varchar](50) NOT NULL,
	[ItemName] [varchar](20) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[HotelId] [int] NOT NULL,
 CONSTRAINT [PK__MenuItem__727E838B1A14E395] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MenuItem] ([ItemId], [ItemName], [CategoryId], [SubCategoryId], [Price], [HotelId]) VALUES (N'1', N'Veg Biryani ', 1, 2, CAST(750 AS Decimal(18, 0)), 1)
INSERT [dbo].[MenuItem] ([ItemId], [ItemName], [CategoryId], [SubCategoryId], [Price], [HotelId]) VALUES (N'2', N'Veg Pulav', 1, 2, CAST(750 AS Decimal(18, 0)), 1)
INSERT [dbo].[MenuItem] ([ItemId], [ItemName], [CategoryId], [SubCategoryId], [Price], [HotelId]) VALUES (N'3', N'Veg Dum Biryani ', 1, 2, CAST(110 AS Decimal(18, 0)), 1)
INSERT [dbo].[MenuItem] ([ItemId], [ItemName], [CategoryId], [SubCategoryId], [Price], [HotelId]) VALUES (N'4', N'Pulav Dum Biryani', 1, 2, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[MenuItem] ([ItemId], [ItemName], [CategoryId], [SubCategoryId], [Price], [HotelId]) VALUES (N'5', N'Black Forest Cake', 1, 3, CAST(210 AS Decimal(18, 0)), 1)
INSERT [dbo].[MenuItem] ([ItemId], [ItemName], [CategoryId], [SubCategoryId], [Price], [HotelId]) VALUES (N'6', N'Dutch Truffle Cake', 1, 3, CAST(210 AS Decimal(18, 0)), 1)
/****** Object:  Table [dbo].[HotelCuisine]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelCuisine](
	[HotelId] [int] NOT NULL,
	[CuisineId] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (1, 1)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (1, 2)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (1, 3)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (1, 4)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (2, 1)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (2, 2)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (2, 4)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (3, 1)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (3, 5)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (3, 4)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (4, 1)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (4, 2)
INSERT [dbo].[HotelCuisine] ([HotelId], [CuisineId]) VALUES (4, 5)
/****** Object:  Table [dbo].[OrderSummary]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderSummary](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
	[GrandTotal] [decimal](18, 0) NOT NULL,
	[ServiceTax] [decimal](18, 0) NOT NULL,
	[DeliveryCharges] [decimal](18, 0) NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PayableAmt] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK__OrderSum__C3905BCF6383C8BA] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderSummary] ON
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (1, 1, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (2, 2, 1, CAST(1610 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1810 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (3, 3, 1, CAST(1610 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1810 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (4, 4, 1, CAST(1610 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1810 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (5, 5, 1, CAST(1700 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1900 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (6, 6, 1, CAST(310 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(511 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (7, 7, 1, CAST(310 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(511 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (8, 8, 1, CAST(1610 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1810 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (9, 9, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (10, 10, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (11, 11, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (12, 12, 1, CAST(1610 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1810 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (13, 13, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (14, 14, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (15, 15, 1, CAST(1610 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1810 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (16, 16, 1, CAST(1500 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1700 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (17, 17, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (18, 18, 1, CAST(1060 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1260 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (19, 19, 1, CAST(1500 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1700 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (20, 20, 1, CAST(1500 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1700 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (21, 21, 1, CAST(310 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(511 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (22, 22, 1, CAST(860 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(1060 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (23, 23, 1, CAST(310 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(511 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (24, 24, 1, CAST(310 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(511 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (25, 25, 1, CAST(310 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(511 AS Decimal(18, 0)))
INSERT [dbo].[OrderSummary] ([OrderId], [CustomerId], [HotelId], [GrandTotal], [ServiceTax], [DeliveryCharges], [Discount], [PayableAmt]) VALUES (26, 26, 1, CAST(200 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(402 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderSummary] OFF
/****** Object:  StoredProcedure [dbo].[sp_Hotel_Delete]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Hotel_Delete]
 (
	 @HotelId int
 )
 AS
 BEGIN
	 DELETE FROM Hotel
	 WHERE HotelId =@HotelId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hotel_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Hotel_Update]
 (
	 @HotelId int,
	 @Name varchar(100),
	 @CityId int,
	 @LocationId int,
	 @Address varchar(400),
	 @Image varchar(200),
	 @Veg tinyint,
	 @NonVeg tinyint,
	 @HomeDelivery tinyint,
	 @MinOrderValue int,
	 @OpenTime varchar(100),
	 @DeliveryTime int,
	 @Tax decimal,
	 @DeliveryCharge decimal,
	 @DicountOffer decimal,
	 @Email varchar(100),
	 @ContactNo varchar(10)
 )
 AS
 BEGIN
	 UPDATE Hotel SET 	 Name=@Name,CityId=@CityId,LocationId=@LocationId,Address=@Address,Image=@Image,Veg=@Veg,NonVeg=@NonVeg,HomeDelivery=@HomeDelivery,MinOrderValue=@MinOrderValue,OpenTime=@OpenTime,DeliveryTime=@DeliveryTime,Tax=@Tax,DeliveryCharge=@DeliveryCharge,DicountOffer=@DicountOffer,Email=@Email,ContactNo=@ContactNo
	 WHERE HotelId=@HotelId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_Hotel_Insert]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_Hotel_Insert]
 (
	 @HotelId int,
	 @Name varchar(100),
	 @CityId int,
	 @LocationId int,
	 @Address varchar(400),
	 @Image varchar(200),
	 @Veg tinyint,
	 @NonVeg tinyint,
	 @HomeDelivery tinyint,
	 @MinOrderValue int,
	 @OpenTime varchar(100),
	 @DeliveryTime int,
	 @Tax decimal,
	 @DeliveryCharge decimal,
	 @DicountOffer decimal,
	 @Email varchar(100),
	 @ContactNo varchar(10)
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM Hotel WHERE HotelId=@HotelId AND Name=@Name AND CityId=@CityId AND LocationId=@LocationId AND Address=@Address AND Image=@Image AND Veg=@Veg AND NonVeg=@NonVeg AND HomeDelivery=@HomeDelivery AND MinOrderValue=@MinOrderValue AND OpenTime=@OpenTime AND DeliveryTime=@DeliveryTime AND Tax=@Tax AND DeliveryCharge=@DeliveryCharge AND DicountOffer=@DicountOffer AND Email=@Email AND ContactNo=@ContactNo )
	 BEGIN 
		 INSERT INTO Hotel(Name,CityId,LocationId,Address,Image,Veg,NonVeg,HomeDelivery,MinOrderValue,OpenTime,DeliveryTime,Tax,DeliveryCharge,DicountOffer,Email,ContactNo)
		 VALUES (@Name,@CityId,@LocationId,@Address,@Image,@Veg,@NonVeg,@HomeDelivery,@MinOrderValue,@OpenTime,@DeliveryTime,@Tax,@DeliveryCharge,@DicountOffer,@Email,@ContactNo)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_HotelCuisine_Update]    Script Date: 05/07/2014 23:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_HotelCuisine_Update]
 (
	 @HotelId int,
	 @Cuisine int
 )
 AS
 BEGIN
	 UPDATE HotelCuisine SET 	 Cuisineid=@Cuisine
	 WHERE HotelId=@HotelId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_HotelCuisine_Insert]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_HotelCuisine_Insert]
 (
	 @HotelId int,
	 @Cuisine int
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM HotelCuisine WHERE HotelId=@HotelId AND Cuisineid=@Cuisine )
	 BEGIN 
		 INSERT INTO HotelCuisine(Cuisineid)
		 VALUES (@Cuisine)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_HotelCuisine_Delete]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_HotelCuisine_Delete]
 (
	 @HotelId int
 )
 AS
 BEGIN
	 DELETE FROM HotelCuisine
	 WHERE HotelId =@HotelId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_HCuisine_Get]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_HCuisine_Get]
 (
	 @HotelId int
 )
 AS
 BEGIN
	 SELECT C.CuisineName 
	 FROM Cuisine C inner join HotelCuisine HC on HC.cuisineId = C.CuisineId 
	 WHERE hotelId = @HotelId
 END
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK__OrderDet__D3B9D36C693CA210] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (1, 1, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (2, 1, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (3, 2, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (4, 2, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (5, 3, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (6, 3, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (7, 4, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (8, 4, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (9, 5, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (10, 5, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (11, 6, N'Pulav Dum Biryani', 200, 1, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (12, 7, N'Pulav Dum Biryani', 200, 1, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (13, 8, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (14, 8, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (15, 9, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (16, 9, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (17, 10, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (18, 10, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (19, 11, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (20, 11, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (21, 12, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (22, 12, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (23, 13, N'Pulav Dum Biryani', 200, 1, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (24, 13, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (25, 14, N'Pulav Dum Biryani', 200, 1, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (26, 14, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (27, 15, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (28, 15, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (29, 16, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (30, 17, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (31, 17, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (32, 18, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (33, 18, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (34, 19, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (35, 20, N'Veg Biryani', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (36, 21, N'Pulav Dum Biryani', 200, 1, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (37, 22, N'Veg Pulav', 750, 1, 750)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (38, 23, N'Pulav Dum Biryani', 200, 1, 200)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (39, 24, N'Veg Dum Biryani', 110, 1, 110)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ItemName], [Price], [Quantity], [Total]) VALUES (40, 25, N'Veg Dum Biryani', 110, 1, 110)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  StoredProcedure [dbo].[sp_MItem_Get]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MItem_Get]
 (
	 @HotelId int,
	 @SubCategoryId int
 )
 AS
 BEGIN
	 SELECT * 
	 FROM MenuItem 
	 WHERE HotelId = @HotelId and SubCategoryId = @SubCategoryId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderSummary_Update]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderSummary_Update]
 (
	 @OrderId int,
	 @CustomerId int,
	 @HotelId int,
	 @GrandTotal decimal,
	 @ServiceTax decimal,
	 @DeliveryCharges decimal,
	 @Discount decimal,
	 @PayableAmt decimal
 )
 AS
 BEGIN
	 UPDATE OrderSummary SET 	 CustomerId=@CustomerId,HotelId=@HotelId,GrandTotal=@GrandTotal,ServiceTax=@ServiceTax,DeliveryCharges=@DeliveryCharges,Discount=@Discount,PayableAmt=@PayableAmt
	 WHERE OrderId=@OrderId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderSummary_Insert]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderSummary_Insert]
 (
	 @OrderId int,
	 @CustomerId int,
	 @HotelId int,
	 @GrandTotal decimal,
	 @ServiceTax decimal,
	 @DeliveryCharges decimal,
	 @Discount decimal,
	 @PayableAmt decimal,
	 @Id int output
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM OrderSummary WHERE OrderId=@OrderId AND CustomerId=@CustomerId AND HotelId=@HotelId AND GrandTotal=@GrandTotal AND ServiceTax=@ServiceTax AND DeliveryCharges=@DeliveryCharges AND Discount=@Discount AND PayableAmt=@PayableAmt )
	 BEGIN 
		 INSERT INTO OrderSummary(CustomerId,HotelId,GrandTotal,ServiceTax,DeliveryCharges,Discount,PayableAmt)
		 VALUES (@CustomerId,@HotelId,@GrandTotal,@ServiceTax,@DeliveryCharges,@Discount,@PayableAmt)
		 SELECT @ID = SCOPE_IDENTITY()
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuItem_Update]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuItem_Update]
 (
	 @ItemId int,
	 @ItemName varchar(20),
	 @CategoryId int,
	 @SubCategoryId int,
	 @Price decimal,
	 @HotelId int
 )
 AS
 BEGIN
	 UPDATE MenuItem SET 	 ItemName=@ItemName,CategoryId=@CategoryId,SubCategoryId=@SubCategoryId,Price=@Price,HotelId=@HotelId
	 WHERE ItemId=@ItemId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuItem_Insert]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuItem_Insert]
 (
	 @ItemId int,
	 @ItemName varchar(20),
	 @CategoryId int,
	 @SubCategoryId int,
	 @Price decimal,
	 @HotelId int
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM MenuItem WHERE ItemId=@ItemId AND ItemName=@ItemName AND CategoryId=@CategoryId AND SubCategoryId=@SubCategoryId AND Price=@Price AND HotelId=@HotelId )
	 BEGIN 
		 INSERT INTO MenuItem(ItemName,CategoryId,SubCategoryId,Price,HotelId)
		 VALUES (@ItemName,@CategoryId,@SubCategoryId,@Price,@HotelId)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuItem_Delete]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_MenuItem_Delete]
 (
	 @ItemId int
 )
 AS
 BEGIN
	 DELETE FROM MenuItem
	 WHERE ItemId =@ItemId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_MenuDetail_Get]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MenuDetail_Get]
 (
	 @HotelId int
 )
 AS
 BEGIN
	 SELECT DISTINCT SC.SubCategoryId,SC.SubCategoryName
	 FROM MenuItem MI  
	 INNER JOIN MenuSubCategory SC ON MI.SubCategoryId = SC.SubCategoryId
	 WHERE HotelId = @HotelId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderSummary_Delete]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderSummary_Delete]
 (
	 @OrderId int
 )
 AS
 BEGIN
	 DELETE FROM OrderSummary
	 WHERE OrderId =@OrderId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail_Update]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ UPDATE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderDetail_Update]
 (
	 @OrderDetailId int,
	 @OrderId int,
	 @ItemName varchar(50),
	 @Price int,
	 @Quantity int,
	 @Total int
 )
 AS
 BEGIN
	 UPDATE OrderDetail SET 	 OrderId=@OrderId,ItemName=@ItemName,Price=@Price,Quantity=@Quantity,Total=@Total
	 WHERE OrderDetailId=@OrderDetailId
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail_Insert]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ INSERT PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderDetail_Insert]
 (
	 @OrderDetailId int,
	 @OrderId int,
	 @ItemName varchar(50),
	 @Price int,
	 @Quantity int,
	 @Total int
 )
 AS
 BEGIN
 	 IF NOT EXISTS (SELECT 1 FROM OrderDetail WHERE OrderDetailId=@OrderDetailId AND OrderId=@OrderId AND ItemName=@ItemName AND Price=@Price AND Quantity=@Quantity AND Total=@Total )
	 BEGIN 
		 INSERT INTO OrderDetail(OrderId,ItemName,Price,Quantity,Total)
		 VALUES (@OrderId,@ItemName,@Price,@Quantity,@Total)
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail_Delete]    Script Date: 05/07/2014 23:30:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------ DELETE PROCEDURE------------------------
 -- CREATED BY AND DATE : 
 -- DESCRIPTION : 
 -----------------------------------------


 CREATE PROCEDURE [dbo].[sp_OrderDetail_Delete]
 (
	 @OrderDetailId int
 )
 AS
 BEGIN
	 DELETE FROM OrderDetail
	 WHERE OrderDetailId =@OrderDetailId
 END
GO
/****** Object:  Default [DF__Hotel__DicountOf__4B7734FF]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [DF__Hotel__DicountOf__4B7734FF]  DEFAULT ((0)) FOR [DicountOffer]
GO
/****** Object:  ForeignKey [FK__Location__CityId__3C69FB99]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK__Location__CityId__3C69FB99] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK__Location__CityId__3C69FB99]
GO
/****** Object:  ForeignKey [FK__MenuSubCa__Categ__117F9D94]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[MenuSubCategory]  WITH CHECK ADD  CONSTRAINT [FK__MenuSubCa__Categ__117F9D94] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[MenuCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[MenuSubCategory] CHECK CONSTRAINT [FK__MenuSubCa__Categ__117F9D94]
GO
/****** Object:  ForeignKey [FK__Hotel__CityId__164452B1]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK__Hotel__CityId__164452B1] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK__Hotel__CityId__164452B1]
GO
/****** Object:  ForeignKey [FK__Hotel__LocationI__173876EA]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK__Hotel__LocationI__173876EA] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK__Hotel__LocationI__173876EA]
GO
/****** Object:  ForeignKey [FK__MenuItem__Catego__1BFD2C07]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK__MenuItem__Catego__1BFD2C07] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[MenuCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK__MenuItem__Catego__1BFD2C07]
GO
/****** Object:  ForeignKey [FK__MenuItem__HotelI__1DE57479]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK__MenuItem__HotelI__1DE57479] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK__MenuItem__HotelI__1DE57479]
GO
/****** Object:  ForeignKey [FK__MenuItem__SubCat__1CF15040]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK__MenuItem__SubCat__1CF15040] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[MenuSubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK__MenuItem__SubCat__1CF15040]
GO
/****** Object:  ForeignKey [FK__HotelCuis__Cuisi__20C1E124]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[HotelCuisine]  WITH CHECK ADD  CONSTRAINT [FK__HotelCuis__Cuisi__20C1E124] FOREIGN KEY([CuisineId])
REFERENCES [dbo].[Cuisine] ([CuisineId])
GO
ALTER TABLE [dbo].[HotelCuisine] CHECK CONSTRAINT [FK__HotelCuis__Cuisi__20C1E124]
GO
/****** Object:  ForeignKey [FK__HotelCuis__Hotel__1FCDBCEB]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[HotelCuisine]  WITH CHECK ADD  CONSTRAINT [FK__HotelCuis__Hotel__1FCDBCEB] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[HotelCuisine] CHECK CONSTRAINT [FK__HotelCuis__Hotel__1FCDBCEB]
GO
/****** Object:  ForeignKey [FK__OrderSumm__CustomerDetail__66603565]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[OrderSummary]  WITH CHECK ADD  CONSTRAINT [FK__OrderSumm__CustomerDetail__66603565] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerDetail] ([CustId])
GO
ALTER TABLE [dbo].[OrderSummary] CHECK CONSTRAINT [FK__OrderSumm__CustomerDetail__66603565]
GO
/****** Object:  ForeignKey [FK__OrderSumm__Hotel__66603565]    Script Date: 05/07/2014 23:30:25 ******/
ALTER TABLE [dbo].[OrderSummary]  WITH CHECK ADD  CONSTRAINT [FK__OrderSumm__Hotel__66603565] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[OrderSummary] CHECK CONSTRAINT [FK__OrderSumm__Hotel__66603565]
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__6B24EA82]    Script Date: 05/07/2014 23:30:26 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__6B24EA82] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderSummary] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__6B24EA82]
GO
