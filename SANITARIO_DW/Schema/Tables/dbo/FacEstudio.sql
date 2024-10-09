CREATE TABLE [dbo].[FacEstudio] (
    [Id_FacEstudio] INT IDENTITY(1,1) NOT NULL,
	[Id_Paciente] INT NOT NULL,
	[Id_Hospital] INT NOT NULL,
	[Id_Medico] INT NOT NULL,
	[ID_Fecha] INT NOT NULL,
   	[Precio] NVARCHAR(150) NOT NULL,
	[ID_Fecha_Estudio] DATETIME NOT NULL,
    [ID_Fecha_Entrega] DATETIME NOT NULL,
    CONSTRAINT [PK_Estudio_FacEstudio] PRIMARY KEY CLUSTERED ([Id_FacEstudio] ASC),
	CONSTRAINT [FK_Estudio_Paciente] FOREIGN KEY ([Id_Paciente]) REFERENCES [dbo].[DimPaciente] ([Id_Paciente]),
	CONSTRAINT [FK_Estudio_Hospital] FOREIGN KEY ([Id_Hospital]) REFERENCES [dbo].[DimHospital] ([Id_DimHospital]),
	CONSTRAINT [FK_Estudio_Medico] FOREIGN KEY ([Id_Medico]) REFERENCES [dbo].[DimMedico] ([Id_Medico]),
	CONSTRAINT [FK_Estudio_Fecha] FOREIGN KEY ([Id_Fecha]) REFERENCES [dbo].[DimTiempo] ([Id_Tiempo])
);