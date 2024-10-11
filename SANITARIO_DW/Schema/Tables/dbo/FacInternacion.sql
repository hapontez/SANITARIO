﻿CREATE TABLE [dbo].[FacInternacion] (
    [Id_FacInternacion] INT IDENTITY(1,1) NOT NULL,
    [ID_Paciente] INT NOT NULL,
    [ID_Hospital] INT NOT NULL,
    [ID_Medico] INT NOT NULL,
    [ID_Fecha] INT NOT NULL,
	[Diagnostico] FLOAT NULL,
	[datos_adicionales] FLOAT NULL,
	[Id_Cama] INT NOT NULL,
	[Es_Internacion] Int NULL,
    [Fecha_Ingreso] DATETIME NOT NULL,
    [Fecha_Salida] DATETIME NOT NULL,
	[Precio_total] FLOAT NULL,	
    CONSTRAINT [PK_Internacion_FacInternacion] PRIMARY KEY CLUSTERED ([Id_FacInternacion] ASC),
	CONSTRAINT [FK_Internacion_Paciente] FOREIGN KEY ([ID_Paciente]) REFERENCES [dbo].[DimPaciente] ([Id_Paciente]),
	CONSTRAINT [FK_Internacion_Hospital] FOREIGN KEY ([Id_Hospital]) REFERENCES [dbo].[DimHospital] ([Id_DimHospital]),
	CONSTRAINT [FK_Internacion_Medico] FOREIGN KEY ([Id_Medico]) REFERENCES [dbo].[DimMedico] ([Id_Medico]),
	CONSTRAINT [FK_Internacion_Fecha] FOREIGN KEY ([Id_Fecha]) REFERENCES [dbo].[DimTiempo] ([Id_Tiempo])
	);
