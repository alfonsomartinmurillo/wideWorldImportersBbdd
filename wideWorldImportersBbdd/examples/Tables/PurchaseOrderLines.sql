﻿CREATE TABLE [examples].[PurchaseOrderLines] (
    [PurchaseOrderLineID]       INT             NOT NULL,
    [PurchaseOrderID]           INT             NOT NULL,
    [StockItemID]               INT             NOT NULL,
    [OrderedOuters]             INT             NOT NULL,
    [Description]               NVARCHAR (100)  NOT NULL,
    [ReceivedOuters]            INT             NOT NULL,
    [PackageTypeID]             INT             NOT NULL,
    [ExpectedUnitPricePerOuter] DECIMAL (18, 2) NULL,
    [LastReceiptDate]           DATE            NULL,
    [IsOrderLineFinalized]      BIT             NOT NULL,
    [LastEditedBy]              INT             NOT NULL,
    [LastEditedWhen]            DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PKPurchaseOrderLines] PRIMARY KEY CLUSTERED ([PurchaseOrderLineID] ASC),
    CONSTRAINT [FKPurchaseOrderLines_Ref_Examples_PurchaseOrderLines] FOREIGN KEY ([PurchaseOrderID]) REFERENCES [examples].[PurchaseOrders] ([PurchaseOrderID])
);


GO
CREATE NONCLUSTERED INDEX [PurchaseOrderId]
    ON [examples].[PurchaseOrderLines]([PurchaseOrderID] ASC);

