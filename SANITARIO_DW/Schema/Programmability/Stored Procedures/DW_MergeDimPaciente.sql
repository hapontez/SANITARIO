CREATE PROCEDURE [dbo].[DW_MergeDimPaciente]
AS
BEGIN

	UPDATE dc
	SET [DNI]    = sc.[DNI]
	   ,[Nombre] = sc.[Nombre]
	   ,[Apellido] = sc.[Apellido]
	   ,[Fecha_Nacimiento] = sc.[Fecha_Nacimiento]
	   ,[Nro_Seguro] = sc.Nro_Seguro
	FROM [dbo].[DimPaciente]         dc
	INNER JOIN [staging].[Paciente] sc ON (dc.[SK_Paciente] = sc.[SK_Paciente])
END
GO