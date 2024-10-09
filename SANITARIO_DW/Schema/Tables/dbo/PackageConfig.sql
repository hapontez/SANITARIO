CREATE TABLE [dbo].[PackageConfig](
	[PackageID] [int] NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[LastRowVersion] [bigint] NULL
);