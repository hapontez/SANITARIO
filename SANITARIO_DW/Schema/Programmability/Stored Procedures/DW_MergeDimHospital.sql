CREATE PROCEDURE [dbo].[DW_MergeDimHospital]
AS
BEGIN

	UPDATE dc
	SET [Nombre] = sc.[Nombre]
	   ,[Telefono] = sc.[Telefono]
	   ,[Direccion] = sc.[Direccion]
	   ,[Ciudad] = sc.[Ciudad]
	   ,[Id_Director_Medico] = sc.[Id_Director_Medico]
	FROM [dbo].[DimHospital]         dc
	INNER JOIN [staging].[Hospital] sc ON (dc.[SK_Hospital] = sc.[SK_Hospital])
END
GO