USE [Cart]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartReport]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartReport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[details] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CartReport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[CategoryImage] [nvarchar](max) NOT NULL,
	[CategoryFK] [int] NULL,
	[CategoryStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[HomeAdress] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[UserImage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ContactNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ContactNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[ProductStatus] [int] NULL,
	[ProdctFK_admin] [int] NULL,
	[ProdctFK_customer] [int] NULL,
	[ProdctFK_category] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Report1]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[details] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Report1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_invoice]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_invoice](
	[in_id] [int] IDENTITY(1,1) NOT NULL,
	[in_fk_Customer] [int] NULL,
	[in_date] [datetime] NULL,
	[in_totalbill] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[in_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_order]    Script Date: 4/24/2019 9:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_order](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[o_fk_Product] [int] NULL,
	[o_fk_invoice] [int] NULL,
	[o_date] [datetime] NULL,
	[o_qty] [int] NULL,
	[o_bill] [float] NULL,
	[o_unitprice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD FOREIGN KEY([CategoryFK])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProdctFK_admin])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProdctFK_customer])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProdctFK_category])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_invoice]  WITH CHECK ADD FOREIGN KEY([in_fk_Customer])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[tbl_invoice]  WITH CHECK ADD FOREIGN KEY([in_fk_Customer])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([o_fk_invoice])
REFERENCES [dbo].[tbl_invoice] ([in_id])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([o_fk_Product])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([o_fk_invoice])
REFERENCES [dbo].[tbl_invoice] ([in_id])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([o_fk_Product])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[tbl_order]  WITH CHECK ADD FOREIGN KEY([o_fk_invoice])
REFERENCES [dbo].[tbl_invoice] ([in_id])
GO
