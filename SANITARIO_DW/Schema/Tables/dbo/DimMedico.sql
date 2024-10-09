CREATE TABLE [dbo].[DimMedico] (
	[SK_Medico] [int] IDENTITY(1,1) NOT NULL,
	[Id_Medico] [int] NOT NULL,
	[DNI] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
    CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED ([Id_Medico] ASC)
);