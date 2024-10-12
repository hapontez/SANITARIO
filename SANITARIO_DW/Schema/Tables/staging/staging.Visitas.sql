CREATE TABLE [dbo].[Table1]
(
	[FS_visita] INT NOT NULL PRIMARY KEY, 
    [FK_Pacitente] INT NULL, 
    [FK_hospital] INT NULL, 
    [FK_Medico] INT NULL, 
    [Diagnóstico] NUMERIC NULL, 
    [Detalle en horarios.] NCHAR(10) NULL, 
    [Fecha_ingreso] DATE NULL, 
    [Fecha_Salida] DATE NULL, 
    [Id_cama] NCHAR(10) NULL
)
