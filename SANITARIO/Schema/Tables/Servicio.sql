CREATE TABLE [dbo].[Servicio] (
    [Id_Servicio] INT IDENTITY(1,1) NOT NULL,
    [Nombre] VARCHAR(50) NOT NULL,
    [Descripcion] VARCHAR(150) NOT NULL,
    CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED ([Id_Servicio] ASC)
);