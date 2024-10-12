CREATE PROCEDURE [dbo].[GetPacienteChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [Id_Paciente],
    [DNI],
    [Nombre],
    [Apellido],
    [Fecha_Nacimiento],
    [Nro_Seguro]
	FROM [dbo].[Paciente]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO