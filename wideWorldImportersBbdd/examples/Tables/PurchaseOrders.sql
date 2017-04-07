CREATE TABLE [examples].[PurchaseOrders] (
    [PurchaseOrderID]      INT            NOT NULL,
    [SupplierID]           INT            NOT NULL,
    [OrderDate]            DATE           NOT NULL,
    [DeliveryMethodID]     INT            NOT NULL,
    [ContactPersonID]      INT            NOT NULL,
    [ExpectedDeliveryDate] DATE           NULL,
    [SupplierReference]    NVARCHAR (20)  NULL,
    [IsOrderFinalized]     BIT            NOT NULL,
    [Comments]             NVARCHAR (MAX) NULL,
    [InternalComments]     NVARCHAR (MAX) NULL,
    [LastEditedBy]         INT            NOT NULL,
    [LastEditedWhen]       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PKPurchaseOrders] PRIMARY KEY CLUSTERED ([PurchaseOrderID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [OrderDate_Incl_ExpectedDeliveryDate]
    ON [examples].[PurchaseOrders]([OrderDate] ASC)
    INCLUDE([ExpectedDeliveryDate]);

