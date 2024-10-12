CREATE TABLE [staging].[Hospital](
	[SK_Hospital] INT NOT NULL,
    [Nombre] VARCHAR(50) NOT NULL,
    [Telefono] VARCHAR(20) NOT NULL,
    [Direccion] VARCHAR(50) NOT NULL,
    [Ciudad] VARCHAR(50) NOT NULL,
	[Id_Director_Medico] INT NOT NULL
);
GO