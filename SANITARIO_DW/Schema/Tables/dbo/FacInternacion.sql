CREATE TABLE [dbo].[FacInternacion] (
    [Id_FacInternacion] INT IDENTITY(1,1) NOT NULL,
    [SK_Paciente] INT NOT NULL,
    [SK_Hospital] INT NOT NULL,
    [SK_Medico] INT NOT NULL,
    [Id_Fecha] INT NOT NULL,
	[Diagnostico] FLOAT NULL,
	[datos_adicionales] FLOAT NULL,
	[Id_Cama] INT NOT NULL,
	[Es_Internacion] Int NULL,
    [Fecha_Ingreso] DATETIME NOT NULL,
    [Fecha_Salida] DATETIME NOT NULL,
	[Precio_total] FLOAT NULL,    
    CONSTRAINT [PK_Internacion_FacInternacion] PRIMARY KEY CLUSTERED ([Id_FacInternacion] ASC),
	CONSTRAINT [FK_Internacion_Paciente] FOREIGN KEY ([SK_Paciente]) REFERENCES [dbo].[DimPaciente] ([SK_Paciente]),
	CONSTRAINT [FK_Internacion_Hospital] FOREIGN KEY ([SK_Hospital]) REFERENCES [dbo].[DimHospital] ([SK_Hospital]),
	CONSTRAINT [FK_Internacion_Medico] FOREIGN KEY ([SK_Medico]) REFERENCES [dbo].[DimMedico] ([SK_Medico]),
	CONSTRAINT [FK_Internacion_Fecha] FOREIGN KEY ([Id_Fecha]) REFERENCES [dbo].[DimTiempo] ([Id_Tiempo])
	);