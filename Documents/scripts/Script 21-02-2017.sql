USE [dbIMS]
GO

/****** Object:  Table [dbo].[SupplierBill]    Script Date: 2/21/2017 11:02:01 PM ******/
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



USE [dbIMS]
GO

/****** Object:  Table [dbo].[SupplierBillDeatil]    Script Date: 2/21/2017 11:02:07 PM ******/
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

/******************************************************************************************************/
/******************************************************************************************************/
/******************************************************************************************************/
/******************************************************************************************************/


USE [dbIMS]
GO

/****** Object:  Table [dbo].[StoreRequest]    Script Date: 2/21/2017 11:01:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StoreRequest](
	[StoreRequestId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Quantity] [decimal](18, 0) NULL,
	[RequistionId] [int] NULL,
 CONSTRAINT [PK_StoreRequest] PRIMARY KEY CLUSTERED 
(
	[StoreRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[StoreRequest]  WITH CHECK ADD  CONSTRAINT [FK_StoreRequest_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO

ALTER TABLE [dbo].[StoreRequest] CHECK CONSTRAINT [FK_StoreRequest_Product]
GO

ALTER TABLE [dbo].[StoreRequest]  WITH CHECK ADD  CONSTRAINT [FK_StoreRequest_Requisition] FOREIGN KEY([RequistionId])
REFERENCES [dbo].[Requisition] ([RequisitionId])
GO

ALTER TABLE [dbo].[StoreRequest] CHECK CONSTRAINT [FK_StoreRequest_Requisition]
GO


/******************************************************************************************************/
/******************************************************************************************************/
/******************************************************************************************************/
/******************************************************************************************************/

/******************************************************************************************************/
/******************************************************************************************************/
/******************************************************************************************************/
/******************************************************************************************************/


ALTER TABLE [PurchaseOrderDetail] DROP CONSTRAINT FK_PurchaseOrderDetail_Requisition

 sp_rename 'PurchaseOrderDetail.RequisitionId', 'StoreRequestId', 'COLUMN';

delete from purchaseorderdetail


ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_StoreRequest] FOREIGN KEY([StoreRequestId])
REFERENCES [dbo].[StoreRequest] ([StoreRequestId])
GO

ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_StoreRequest]
GO