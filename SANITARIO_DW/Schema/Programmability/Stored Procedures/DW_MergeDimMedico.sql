CREATE PROCEDURE [dbo].[DW_MergeDimMedico]
AS
BEGIN

	UPDATE dc
	SET [DNI]    = sc.[DNI]
	   ,[Nombre] = sc.[Nombre]
	   ,[Apellidos] = sc.[Apellidos]
	   ,[FechaNacimiento] = sc.[FechaNacimiento]
	FROM [dbo].[DimMedico]         dc
	INNER JOIN [staging].[Medico] sc ON (dc.[SK_Medico] = sc.[SK_Medico])
END
GO