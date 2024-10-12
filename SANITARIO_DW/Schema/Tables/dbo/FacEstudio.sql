CREATE TABLE [dbo].[FacEstudio] (
    [Id_FacEstudio] INT IDENTITY(1,1) NOT NULL,
	[SK_Paciente] INT NOT NULL,
	[SK_Hospital] INT NOT NULL,
	[SK_Medico] INT NOT NULL,
	[ID_Fecha] INT NOT NULL,
   	[Precio] FLOAT NOT NULL,
	[ID_Fecha_Estudio] INT NOT NULL,
    [ID_Fecha_Entrega] INT NOT NULL,
    CONSTRAINT [PK_Estudio_FacEstudio] PRIMARY KEY CLUSTERED ([Id_FacEstudio] ASC),
	CONSTRAINT [FK_Estudio_Paciente] FOREIGN KEY ([SK_Paciente]) REFERENCES [dbo].[DimPaciente] ([SK_Paciente]),
	CONSTRAINT [FK_Estudio_Hospital] FOREIGN KEY ([SK_Hospital]) REFERENCES [dbo].[DimHospital] ([SK_Hospital]),
	CONSTRAINT [FK_Estudio_Medico] FOREIGN KEY ([SK_Medico]) REFERENCES [dbo].[DimMedico] ([SK_Medico]),
	CONSTRAINT [FK_Estudio_Fecha] FOREIGN KEY ([ID_Fecha]) REFERENCES [dbo].[DimTiempo] ([ID_Tiempo]),
	CONSTRAINT [FK_Estudio_FeEst] FOREIGN KEY ([ID_Fecha_Estudio]) REFERENCES [dbo].[DimTiempo] ([ID_Tiempo]),
    CONSTRAINT [FK_Estudio_FeEnt] FOREIGN KEY ([ID_Fecha_Entrega]) REFERENCES [dbo].[DimTiempo] ([ID_Tiempo])
);