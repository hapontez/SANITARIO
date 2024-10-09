CREATE PROCEDURE [dbo].[GetMedicoChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [Id_Medico]
		,[DNI]
		,[Nombre]
		,[Apellidos]
		,[FechaNacimiento]
	FROM [dbo].[Medico]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO