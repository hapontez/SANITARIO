CREATE TABLE [dbo].[DimPaciente] (
	[SK_Paciente] INT IDENTITY(1,1) NOT NULL,
    [Id_Paciente] INT NOT NULL,
    [DNI] INT NOT NULL UNIQUE,
    [Nombre] NVARCHAR(50) NOT NULL,
    [Apellido] NVARCHAR(50) NOT NULL,
    [Fecha_Nacimiento] DATETIME NOT NULL,
    [Nro_Seguro] INT NOT NULL,
    CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED ([SK_Paciente] ASC)
);