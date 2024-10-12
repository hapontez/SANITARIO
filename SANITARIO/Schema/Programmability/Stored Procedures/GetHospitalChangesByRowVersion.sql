CREATE PROCEDURE [dbo].[GetHospitalChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [Id_Hospital],
    [Nombre],
    [Telefono],
    [Direccion],
    [Ciudad],
	[Id_Director_Medico]
	FROM [dbo].[Hospital]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO