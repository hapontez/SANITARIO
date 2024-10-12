CREATE PROCEDURE [dbo].[DW_MergeFacVisita]
AS
BEGIN

	UPDATE dc
	SET 
		[Id_Visita] = sc.[Id_Visita],
		[Id_Detalle_Visita] = sc.[Id_Detalle_Visita],
		[SK_Paciente] = sc.[SK_Paciente],
		[SK_Hospital] = sc.[SK_Hospital],
		[SK_Medico] = sc.[SK_Medico],
		[Fecha_Visita] = sc.[Fecha_Visita],
		[Nombre_Servicio] = sc.[Nombre_Servicio],
		[Cargo_MHS] = sc.[Cargo_MHS],
		[Precio_Ser_Hosp] = sc.[Precio_Ser_Hosp],
		[Diagnostico] = sc.[Diagnostico],
		[Es_Internacion] = sc.[Es_Internacion],
		[Id_Cama] = sc.[Id_Cama],
		[Cantidad_Dias] = sc.[Cantidad_Dias],
		[Precio_Dias_Cama] = sc.[Precio_Dias_Cama],
		[Fecha_Ingreso] = sc.[Fecha_Ingreso],
		[Fecha_Salida] = sc.[Fecha_Salida],
		[Precio_MHS] = sc.[Precio_MHS],
		[es_Reconsulta] = sc.[es_Reconsulta],
		[Id_Visita_inicial] = sc.[Id_Visita_inicial],
		[Precio_Visita] = sc.[Precio_Visita],
		[datos_adicionales] = sc.[datos_adicionales],
		[Tiempo_Key] = sc.[Tiempo_Key]
	FROM [dbo].[FacVisita]         dc
	INNER JOIN [staging].[Visita] sc ON (dc.[Id_Visita] = sc.[Id_Visita] AND dc.[Id_Detalle_Visita] = sc.[Id_Detalle_Visita])
END
GO