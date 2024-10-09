CREATE TABLE [dbo].[DimHospital] (
    [Id_DimHospital] INT IDENTITY(1,1) NOT NULL,
	[Id_Hospital] INT NOT NULL,
	[Hospital] NVARCHAR(50) NOT NULL,
    [Telefono] VARCHAR(20) NOT NULL,
    [Direccion] VARCHAR(50) NOT NULL,
    [Ciudad] VARCHAR(50) NOT NULL,
    [Id_Director] INT NOT NULL,
	[Id_Servicio] INT NOT NULL,
    [Servicio] NVARCHAR(50) NOT NULL,
    [Id_Habitacion] INT NOT NULL,
    [Nro_Habitacion] INT NOT NULL,
    [Id_Cama] INT NOT NULL,
	[Estado_Disponibilidad] BIT NOT NULL,
	[Precio] FLOAT NOT NULL,
	[RowVersion] INT NOT NULL,
    CONSTRAINT [PK_DimHospital] PRIMARY KEY CLUSTERED ([Id_DimHospital] ASC)
   );
