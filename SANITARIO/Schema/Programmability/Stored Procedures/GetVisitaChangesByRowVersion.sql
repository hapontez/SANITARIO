CREATE PROCEDURE [dbo].[GetVisitaChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	WITH VISITA AS(
	select DV.*, MHS.Id_Medico, MHS.Id_Servicio_Hospital, MHS.Cargo, MHS.Precio PrecioMHS, V.Id_Paciente, V.es_Reconsulta, V.FechaHora, V.Precio_total Precio_Visita, V.Id_Visita_inicial
	from [SANITARIO_OLTP].[dbo].[Detalle_Visita] DV
	INNER JOIN SANITARIO_OLTP.dbo.Medico_Hospital_Servicio MHS ON MHS.Id_Medico_Hospital_Servicio = DV.Id_HSM
	INNER JOIN SANITARIO_OLTP.dbo.Visita V ON V.Id_Visita = DV.Id_Visita)
	SELECT V.Id_Visita, V.Id_Detalle_Visita, V.Id_Paciente, SH.Id_Hospital, V.Id_Medico, V.FechaHora Fecha_Visita, S.Nombre Nombre_Servicio, V.Cargo Cargo_MHS
	,SH.Precio Precio_Ser_Hosp, V.Diagnostico, V.Es_Internacion, V.Id_Cama, V.Cantidad_Dias, V.Precio_Dias_Cama,  V.Fecha_Ingreso 
	,V.Fecha_Salida, V.PrecioMHS Precio_MHS, V.es_Reconsulta, V.Id_Visita_inicial, V.Precio_Visita, V.datos_adicionales,Tiempo_Key = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,V.FechaHora))
						  + CASE 
								WHEN DATEPART(MONTH,V.FechaHora) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,V.FechaHora))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,V.FechaHora))
							END
						  + CASE 
								WHEN DATEPART(DAY,V.FechaHora) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,V.FechaHora))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,V.FechaHora))
							END))
	FROM VISITA V
	INNER JOIN SANITARIO_OLTP.dbo.Servicio_Hospital SH ON SH.Id_Servicio_Hospital = V.Id_Servicio_Hospital
	INNER JOIN SANITARIO_OLTP.dbo.Servicio S ON S.Id_Servicio = SH.Id_Servicio
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO