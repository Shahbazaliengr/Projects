USE [dbIMS]
GO
/****** Object:  Table [dbo].[AppForm]    Script Date: 2/13/2017 7:33:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppForm](
	[AppFormId] [int] IDENTITY(1,1) NOT NULL,
	[AppFormName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AppForm] PRIMARY KEY CLUSTERED 
(
	[AppFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppFormRights]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppFormRights](
	[AppFormRightsId] [int] IDENTITY(1,1) NOT NULL,
	[AppFormId] [int] NULL,
	[UserId] [int] NULL,
	[Creator] [bit] NULL,
	[Updater] [bit] NULL,
	[Deleter] [bit] NULL,
	[Viewer] [bit] NULL,
	[Approver] [bit] NULL,
	[Verifier] [bit] NULL,
 CONSTRAINT [PK_AppFormRights] PRIMARY KEY CLUSTERED 
(
	[AppFormRightsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](150) NULL,
	[Logo] [image] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DefaultPassword]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultPassword](
	[DefaultPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DefaultPassword] PRIMARY KEY CLUSTERED 
(
	[DefaultPassword] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](150) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Driver]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[DriverId] [int] IDENTITY(1,1) NOT NULL,
	[DriverName] [nvarchar](150) NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IGP]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IGP](
	[IGPId] [int] IDENTITY(1,1) NOT NULL,
	[IGPNumber] [nvarchar](50) NOT NULL,
	[CurrentDate] [datetime] NULL,
	[SupplierId] [int] NULL,
	[SupplierBillId] [int] NULL,
	[DriverId] [int] NULL,
	[VehicleId] [int] NULL,
	[VoucherNumber] [nvarchar](50) NULL,
	[TimeIn] [nvarchar](50) NULL,
	[TimeOut] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[VerfiedBy] [int] NULL,
	[VerfiedOn] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedOn] [datetime] NULL,
 CONSTRAINT [PK_IGP] PRIMARY KEY CLUSTERED 
(
	[IGPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IGPDetail]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IGPDetail](
	[IGPDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[IGPId] [int] NULL,
	[SrNumber] [int] NULL,
	[SRVNumber] [nvarchar](50) NULL,
	[QuantityAccepted] [int] NULL,
	[SRVCreatedBy] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[ProductionDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[BatchNumber] [nvarchar](150) NULL,
 CONSTRAINT [PK_IGPDetail] PRIMARY KEY CLUSTERED 
(
	[IGPDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IMSForm]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMSForm](
	[IMSFormId] [int] IDENTITY(1,1) NOT NULL,
	[IMSFormTitle] [nvarchar](150) NULL,
	[DocumentNumber] [nvarchar](50) NULL,
	[RevisionNumber] [nvarchar](50) NULL,
	[EffectiveDate] [datetime] NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_IMSForm] PRIMARY KEY CLUSTERED 
(
	[IMSFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PercentageValue]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PercentageValue](
	[PercentageValueId] [int] IDENTITY(1,1) NOT NULL,
	[PercentageValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_PercentageValue] PRIMARY KEY CLUSTERED 
(
	[PercentageValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[ProductCode] [nvarchar](50) NULL,
	[ProductCategoryId] [int] NULL,
	[UnitId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](150) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [int] NULL,
	[OrderNo] [nvarchar](50) NULL,
	[ReferenceNo] [nvarchar](50) NULL,
	[DeliveryDate] [date] NULL,
	[PurchaseOrderDate] [date] NULL,
	[Discount] [decimal](18, 3) NULL,
	[DiscountTypeId] [int] NULL,
	[SalesTax] [decimal](18, 3) NULL,
	[SalesTaxTypeId] [int] NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[PurchaseOrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [decimal](18, 3) NULL,
	[UnitPrice] [decimal](18, 3) NULL,
	[RequisitionId] [int] NULL,
 CONSTRAINT [PK_PurchaseOrderDetail] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requisition]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requisition](
	[RequisitionId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Reason] [nvarchar](500) NULL,
	[RequisitionDate] [date] NULL,
	[Ordered] [bit] NULL,
 CONSTRAINT [PK_Requisition] PRIMARY KEY CLUSTERED 
(
	[RequisitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](150) NULL,
	[SupplierCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierBill]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierBill](
	[SupplierBillId] [int] NOT NULL,
	[PurchaseOrderId] [int] NULL,
	[Discount] [int] NULL,
	[DiscountTypeId] [int] NULL,
	[SalesTax] [int] NULL,
	[SalesTaxTypeId] [int] NULL,
 CONSTRAINT [PK_SupplierBill] PRIMARY KEY CLUSTERED 
(
	[SupplierBillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierBillDeatil]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierBillDeatil](
	[SupplierBillDeatilId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierBillId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [int] NULL,
 CONSTRAINT [PK_SupplierBillDeatil] PRIMARY KEY CLUSTERED 
(
	[SupplierBillDeatilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unit]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitTitle] [nvarchar](150) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[isActive] [bit] NULL,
	[EmployeeName] [nvarchar](150) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 2/13/2017 7:33:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleName] [nvarchar](150) NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AppForm] ON 

GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (1, N'Product Category')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (2, N'Products')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (3, N'Driver')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (4, N'Vehicles')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (5, N'Inward Gate Pass')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (6, N'Outward Gate Pass')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (7, N'Purchase Order')
GO
INSERT [dbo].[AppForm] ([AppFormId], [AppFormName]) VALUES (8, N'SRV')
GO
SET IDENTITY_INSERT [dbo].[AppForm] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [Logo]) VALUES (1, N'Fauji Fresh n Freeze Limited.', NULL)
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
INSERT [dbo].[DefaultPassword] ([DefaultPassword]) VALUES (N'1234')
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (1, N'Accounts')
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (2, N'Store')
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName]) VALUES (3, N'HR')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Driver] ON 

GO
INSERT [dbo].[Driver] ([DriverId], [DriverName], [SupplierId]) VALUES (1, N'Mushtaq Ahmed', 1)
GO
INSERT [dbo].[Driver] ([DriverId], [DriverName], [SupplierId]) VALUES (2, N'Qasim', 1)
GO
INSERT [dbo].[Driver] ([DriverId], [DriverName], [SupplierId]) VALUES (1003, N'ttttttt', 2)
GO
SET IDENTITY_INSERT [dbo].[Driver] OFF
GO
SET IDENTITY_INSERT [dbo].[IGP] ON 

GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1, N'IGP-2016-03-001', CAST(N'2015-01-01T00:00:00.000' AS DateTime), 1, NULL, 1, 1, N'234', N'12:13', N'3:00', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (2, N'IGP-2016-03-002', CAST(N'2013-01-01T00:00:00.000' AS DateTime), 2, NULL, 1, 1, N'324234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1002, N'IGP-2016-03-003', CAST(N'2009-12-12T00:00:00.000' AS DateTime), 1, NULL, 1, 1, N'23455', N'12:00', N'12:20', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1003, N'IGP-2016-03-004', CAST(N'2000-12-12T00:00:00.000' AS DateTime), 1, NULL, 1, 1, N'A456', N'1:00', N'1:30', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1004, N'IGP-2016-03-005', CAST(N'2016-03-16T07:16:44.000' AS DateTime), 1, NULL, 2, 1, N'236ad', N'12:00', N'12:20', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1005, N'IGP-2016-03-006', CAST(N'2016-03-06T07:21:18.000' AS DateTime), 1, NULL, 2, 1, N'665356', N'11:00', N'12:00', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1006, N'IGP-2016-03-007', CAST(N'2016-03-03T07:23:47.000' AS DateTime), 1, NULL, 2, 1, N'dddd', N'1', N'2', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1010, N'IGP-2016-03-008', CAST(N'2016-03-07T10:11:28.540' AS DateTime), 1, NULL, 2, 1, N'2345234', N'1', N'23', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1011, N'IGP-2016-3-009', CAST(N'2016-03-11T23:40:15.193' AS DateTime), 1, NULL, 1, 1, N'23423', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1012, N'IGP-2016-3-010', CAST(N'2016-03-26T11:38:36.063' AS DateTime), 1, NULL, 1, 5, N'435345', N'12:00', N'2:00', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGP] ([IGPId], [IGPNumber], [CurrentDate], [SupplierId], [SupplierBillId], [DriverId], [VehicleId], [VoucherNumber], [TimeIn], [TimeOut], [CreatedBy], [CreatedOn], [VerfiedBy], [VerfiedOn], [ApprovedBy], [ApprovedOn]) VALUES (1013, N'IGP-2016-3-011', CAST(N'2016-03-26T11:57:29.867' AS DateTime), 1, NULL, 1, 1, N'234', N'12:00', N'1:00', NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[IGP] OFF
GO
SET IDENTITY_INSERT [dbo].[IGPDetail] ON 

GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (1, 1, 1, 2, 1, 1, N'SRV-2016-03-001-1', 2, 0, N'aaaaaaaaaa', NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (2, 1, 2, 25, 1, 2, N'SRV-2016-03-001-2', 1, 0, N'j', NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (3, 1, 1, 324, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (4, 1, 2, 34, 1006, NULL, NULL, 3, 0, N'aa', NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (5, 1, 2, 345, 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (10, 1, 3, 5, 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (11, 1, 3, 45, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (12, 3, 14, 12, 1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IGPDetail] ([IGPDetailId], [ProductCategoryId], [ProductId], [Quantity], [IGPId], [SrNumber], [SRVNumber], [QuantityAccepted], [SRVCreatedBy], [Remarks], [ProductionDate], [ExpiryDate], [BatchNumber]) VALUES (13, 3, 14, 657, 1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[IGPDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[IMSForm] ON 

GO
INSERT [dbo].[IMSForm] ([IMSFormId], [IMSFormTitle], [DocumentNumber], [RevisionNumber], [EffectiveDate], [CompanyId]) VALUES (1, N' Inward Gate Pass', N'QR/STR/007/03/1', N'00', CAST(N'2014-09-15T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[IMSForm] OFF
GO
SET IDENTITY_INSERT [dbo].[PercentageValue] ON 

GO
INSERT [dbo].[PercentageValue] ([PercentageValueId], [PercentageValue]) VALUES (1, N'Value')
GO
INSERT [dbo].[PercentageValue] ([PercentageValueId], [PercentageValue]) VALUES (2, N'%')
GO
SET IDENTITY_INSERT [dbo].[PercentageValue] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (1, N'Product 1', N'001', 1, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (2, N'Product 2', N'002', 1, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (3, N'Product 3', N'003', 1, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (5, N'Motor', N'001', 4, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (8, N'tttttttttt', N'002', 4, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (13, N't', N'003', 4, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductCategoryId], [UnitId]) VALUES (14, N'gvsdfsdfds', N'001', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [ProductCategoryName]) VALUES (3, N'Chemical')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [ProductCategoryName]) VALUES (2, N'Glass')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [ProductCategoryName]) VALUES (1, N'Liquid')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [ProductCategoryName]) VALUES (4, N'Machinery')
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrder] ON 

GO
INSERT [dbo].[PurchaseOrder] ([PurchaseOrderId], [SupplierId], [OrderNo], [ReferenceNo], [DeliveryDate], [PurchaseOrderDate], [Discount], [DiscountTypeId], [SalesTax], [SalesTaxTypeId]) VALUES (2, 1, N'345', N'666', CAST(N'2016-10-26' AS Date), CAST(N'2016-10-26' AS Date), CAST(55.000 AS Decimal(18, 3)), 1, CAST(3.000 AS Decimal(18, 3)), 2)
GO
INSERT [dbo].[PurchaseOrder] ([PurchaseOrderId], [SupplierId], [OrderNo], [ReferenceNo], [DeliveryDate], [PurchaseOrderDate], [Discount], [DiscountTypeId], [SalesTax], [SalesTaxTypeId]) VALUES (3, NULL, N'wer', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[Requisition] ON 

GO
INSERT [dbo].[Requisition] ([RequisitionId], [DepartmentId], [ProductId], [Quantity], [Reason], [RequisitionDate], [Ordered]) VALUES (1, 1, 1, 34, N'a a d f a ', CAST(N'2016-10-26' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[Requisition] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Creator')
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Updater')
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Deleter')
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (4, N'Viewer')
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (5, N'Approver')
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (6, N'Verifier')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (1, N'Ali Imran', N'03214')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (2, N'Khadim Hussain', N'242')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (4, N'Shahid Ali', N'123')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (5, N'Mukhtar Hassan', N'342')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (6, N'Ali Akbar', N'343')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (7, N'Mushtaq Minahas', N'122')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (8, N'Nusrat Javed', N'121')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (9, N'Shakeel Afridi', N'120')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (10, N'Wahid Baloch', N'119')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (11, N'Qasim Ali', N'118')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (12, N'Kazim Ali', N'117')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (13, N'Sajjad Ali', N'116')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (14, N'Nawaz Shareef', N'420')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (15, N'Shahbaz Shareef', N'9211')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (16, N'Abbas Shareef', N'412')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (17, N'Hamza Shahbaz', N'222')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [SupplierCode]) VALUES (18, N'Hussain Nawaz', N'220')
GO
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

GO
INSERT [dbo].[Unit] ([UnitId], [UnitTitle]) VALUES (1, N'KG')
GO
INSERT [dbo].[Unit] ([UnitId], [UnitTitle]) VALUES (2, N'Liter')
GO
INSERT [dbo].[Unit] ([UnitId], [UnitTitle]) VALUES (3, N'Pieces')
GO
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [isActive], [EmployeeName]) VALUES (1, N'admin', N'admin', 1, N'Admin')
GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [isActive], [EmployeeName]) VALUES (2, N'abis@yahoo.com', N'1', 1, N'Muhammad Abis')
GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [isActive], [EmployeeName]) VALUES (3, N'ali@ali.com', N'1', 1, N'Ali Imran')
GO
INSERT [dbo].[User] ([UserId], [UserName], [Password], [isActive], [EmployeeName]) VALUES (4, N'a@a.com', N'1', 0, N'a')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON 

GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleName], [SupplierId]) VALUES (1, N'Lw 9023', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleName], [SupplierId]) VALUES (5, N'Lw 9024', 1)
GO
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
GO
ALTER TABLE [dbo].[IGPDetail] ADD  CONSTRAINT [DF_IGPDetail_QuantityAccepted]  DEFAULT ((0)) FOR [QuantityAccepted]
GO
ALTER TABLE [dbo].[AppFormRights]  WITH CHECK ADD  CONSTRAINT [FK_AppFormRights_AppForm] FOREIGN KEY([AppFormId])
REFERENCES [dbo].[AppForm] ([AppFormId])
GO
ALTER TABLE [dbo].[AppFormRights] CHECK CONSTRAINT [FK_AppFormRights_AppForm]
GO
ALTER TABLE [dbo].[AppFormRights]  WITH CHECK ADD  CONSTRAINT [FK_AppFormRights_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[AppFormRights] CHECK CONSTRAINT [FK_AppFormRights_User]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Supplier]
GO
ALTER TABLE [dbo].[IGP]  WITH CHECK ADD  CONSTRAINT [FK_IGP_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Driver] ([DriverId])
GO
ALTER TABLE [dbo].[IGP] CHECK CONSTRAINT [FK_IGP_Driver]
GO
ALTER TABLE [dbo].[IGP]  WITH CHECK ADD  CONSTRAINT [FK_IGP_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[IGP] CHECK CONSTRAINT [FK_IGP_Supplier]
GO
ALTER TABLE [dbo].[IGP]  WITH CHECK ADD  CONSTRAINT [FK_IGP_SupplierBill] FOREIGN KEY([SupplierBillId])
REFERENCES [dbo].[SupplierBill] ([SupplierBillId])
GO
ALTER TABLE [dbo].[IGP] CHECK CONSTRAINT [FK_IGP_SupplierBill]
GO
ALTER TABLE [dbo].[IGP]  WITH CHECK ADD  CONSTRAINT [FK_IGP_User] FOREIGN KEY([VerfiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[IGP] CHECK CONSTRAINT [FK_IGP_User]
GO
ALTER TABLE [dbo].[IGP]  WITH CHECK ADD  CONSTRAINT [FK_IGP_User1] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[IGP] CHECK CONSTRAINT [FK_IGP_User1]
GO
ALTER TABLE [dbo].[IGP]  WITH CHECK ADD  CONSTRAINT [FK_IGP_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[IGP] CHECK CONSTRAINT [FK_IGP_Vehicle]
GO
ALTER TABLE [dbo].[IGPDetail]  WITH CHECK ADD  CONSTRAINT [FK_IGPDetail_IGP] FOREIGN KEY([IGPId])
REFERENCES [dbo].[IGP] ([IGPId])
GO
ALTER TABLE [dbo].[IGPDetail] CHECK CONSTRAINT [FK_IGPDetail_IGP]
GO
ALTER TABLE [dbo].[IGPDetail]  WITH CHECK ADD  CONSTRAINT [FK_IGPDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[IGPDetail] CHECK CONSTRAINT [FK_IGPDetail_Product]
GO
ALTER TABLE [dbo].[IGPDetail]  WITH CHECK ADD  CONSTRAINT [FK_IGPDetail_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[IGPDetail] CHECK CONSTRAINT [FK_IGPDetail_ProductCategory]
GO
ALTER TABLE [dbo].[IMSForm]  WITH CHECK ADD  CONSTRAINT [FK_IMSForm_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[IMSForm] CHECK CONSTRAINT [FK_IMSForm_Company]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Unit]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_PercentageValue] FOREIGN KEY([DiscountTypeId])
REFERENCES [dbo].[PercentageValue] ([PercentageValueId])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_PercentageValue]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_PercentageValue1] FOREIGN KEY([SalesTaxTypeId])
REFERENCES [dbo].[PercentageValue] ([PercentageValueId])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_PercentageValue1]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Supplier]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_Product]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderId])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_Requisition] FOREIGN KEY([RequisitionId])
REFERENCES [dbo].[Requisition] ([RequisitionId])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_Requisition]
GO
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_Department]
GO
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_Product]
GO
ALTER TABLE [dbo].[SupplierBill]  WITH CHECK ADD  CONSTRAINT [FK_SupplierBill_PercentageValue] FOREIGN KEY([DiscountTypeId])
REFERENCES [dbo].[PercentageValue] ([PercentageValueId])
GO
ALTER TABLE [dbo].[SupplierBill] CHECK CONSTRAINT [FK_SupplierBill_PercentageValue]
GO
ALTER TABLE [dbo].[SupplierBill]  WITH CHECK ADD  CONSTRAINT [FK_SupplierBill_PercentageValue1] FOREIGN KEY([SalesTaxTypeId])
REFERENCES [dbo].[PercentageValue] ([PercentageValueId])
GO
ALTER TABLE [dbo].[SupplierBill] CHECK CONSTRAINT [FK_SupplierBill_PercentageValue1]
GO
ALTER TABLE [dbo].[SupplierBill]  WITH CHECK ADD  CONSTRAINT [FK_SupplierBill_PurchaseOrder] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderId])
GO
ALTER TABLE [dbo].[SupplierBill] CHECK CONSTRAINT [FK_SupplierBill_PurchaseOrder]
GO
ALTER TABLE [dbo].[SupplierBillDeatil]  WITH CHECK ADD  CONSTRAINT [FK_SupplierBillDeatil_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[SupplierBillDeatil] CHECK CONSTRAINT [FK_SupplierBillDeatil_Product]
GO
ALTER TABLE [dbo].[SupplierBillDeatil]  WITH CHECK ADD  CONSTRAINT [FK_SupplierBillDeatil_SupplierBill] FOREIGN KEY([SupplierBillId])
REFERENCES [dbo].[SupplierBill] ([SupplierBillId])
GO
ALTER TABLE [dbo].[SupplierBillDeatil] CHECK CONSTRAINT [FK_SupplierBillDeatil_SupplierBill]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Supplier]
GO
