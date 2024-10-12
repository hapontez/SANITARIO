CREATE TABLE [dbo].[FacVisita] (
    [Id_FacVisita] INT IDENTITY(1,1) NOT NULL,
    [Id_Paciente] INT NOT NULL,
    [Id_Hospital] INT NOT NULL,
    [Id_Medico] INT NOT NULL,
    [Id_Visita] INT NOT NULL,
    [Id_Fecha] INT NOT NULL,
    [Precio_total] FLOAT NULL,
	[es_Reconsulta] int NULL,
    [Id_Visita_inicial] INT NOT NULL,
	[Diagnostico] FLOAT NULL,
	[datos_adicionales] FLOAT NULL,
    [RowVersion] INT NOT NULL,
    CONSTRAINT [PK_Visita_FacVisita] PRIMARY KEY CLUSTERED ([Id_FacVisita] ASC),
    --CONSTRAINT [FK_Visita_Paciente] FOREIGN KEY ([Id_Paciente]) REFERENCES [dbo].[DimPaciente] ([Id_Paciente]),
	--CONSTRAINT [FK_Visita_Hospital] FOREIGN KEY ([Id_Hospital]) REFERENCES [dbo].[DimHospital] ([Id_DimHospital]),
	--CONSTRAINT [FK_Visita_Medico] FOREIGN KEY ([Id_Medico]) REFERENCES [dbo].[DimMedico] ([Id_Medico]),
	--CONSTRAINT [FK_Visita_Tiempo] FOREIGN KEY ([Id_Fecha]) REFERENCES [dbo].[DimTiempo] ([Id_Tiempo])
);