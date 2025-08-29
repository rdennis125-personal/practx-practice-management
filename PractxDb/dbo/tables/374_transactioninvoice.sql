CREATE TABLE [transactioninvoice] ( [TransactionInvoiceNum] bigint NOT NULL IDENTITY(1,1),
[FileName] varchar(255) NOT NULL,
[InvoiceData] VARCHAR(MAX) DEFAULT NULL,
[FilePath] varchar(255) NOT NULL,
CONSTRAINT PK_TransactionInvoiceNum PRIMARY KEY ([TransactionInvoiceNum]) );