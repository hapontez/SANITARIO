CREATE TABLE [dbo].[DimHospital] (
	[SK_Hospital] INT IDENTITY(1,1) NOT NULL,
	[Id_Hospital] INT NOT NULL,
	[Nombre] VARCHAR(50) NOT NULL,
    [Telefono] VARCHAR(20) NOT NULL,
    [Direccion] VARCHAR(50) NOT NULL,
    [Ciudad] VARCHAR(50) NOT NULL,
    [Id_Director_Medico] INT NOT NULL,
    CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED ([SK_Hospital] ASC)
   );
