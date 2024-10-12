USE [SANITARIO_OLTP]
GO

SET IDENTITY_INSERT [dbo].[Detalle_Visita] ON
INSERT INTO [dbo].[Detalle_Visita] ([Id_Detalle_Visita],[Id_Visita],[Id_HSM],[Precio_Detalle_Visita],[Diagnostico],[datos_adicionales],[Es_Internacion],[Id_Cama],[Cantidad_Dias],[Precio_Dias_Cama],[SubTotal],[Fecha_Ingreso],[Fecha_Salida])
VALUES
(1,1,1,'200','Dolor en el pecho','Rayos X y reconsulta',0,NULL,0,'0','200',CAST(N'2024-01-01T08:00:00.000' AS DateTime),CAST(N'2024-01-01T08:00:00.000' AS DateTime)),
(2,2,5,'300','Chequeo Semestral','Todo normal',0,NULL,0,'0','300',CAST(N'2024-01-01T09:10:00.000' AS DateTime),CAST(N'2024-01-01T09:10:00.000' AS DateTime)),
(3,3,2,'300','Chequeo Semestral','Todo normal',0,NULL,0,'0','300',CAST(N'2024-01-02T10:40:00.000' AS DateTime),CAST(N'2024-01-02T10:40:00.000' AS DateTime)),
(4,4,5,'300','Leve Aritmia','Colesterol Alto',0,NULL,0,'0','300',CAST(N'2024-01-04T08:15:00.000' AS DateTime),CAST(N'2024-01-04T08:15:00.000' AS DateTime)),
(5,5,6,'300','Embarazo','Iniciar visitas periodicas',0,NULL,0,'0','300',CAST(N'2024-01-05T15:00:00.000' AS DateTime),CAST(N'2024-01-05T15:00:00.000' AS DateTime)),
(6,6,20,'200','Chequeo Anual','Esperar Analisis',0,NULL,0,'0','200',CAST(N'2024-01-06T16:20:00.000' AS DateTime),CAST(N'2024-01-06T16:20:00.000' AS DateTime)),
(7,7,22,'300','Chequeo Anual','Mareos',0,NULL,0,'0','300',CAST(N'2024-01-07T18:15:00.000' AS DateTime),CAST(N'2024-01-07T18:15:00.000' AS DateTime)),
(8,8,27,'300','Nervios','Evitar luces intermitentes',0,NULL,0,'0','300',CAST(N'2024-01-09T10:00:00.000' AS DateTime),CAST(N'2024-01-09T10:00:00.000' AS DateTime)),
(9,9,30,'200','Desmayo','Deshidratación',1,97,1,'100','300',CAST(N'2024-01-11T08:00:00.000' AS DateTime),CAST(N'2024-01-12T10:00:00.000' AS DateTime)),
(10,10,22,'300','Miopia','Lentes',0,NULL,0,'0','300',CAST(N'2024-01-17T14:00:00.000' AS DateTime),CAST(N'2024-01-17T14:00:00.000' AS DateTime)),
(11,11,26,'300','Esguince','Reposo y Medicamentos',0,NULL,0,'0','300',CAST(N'2024-01-17T15:20:00.000' AS DateTime),CAST(N'2024-01-17T15:20:00.000' AS DateTime)),
(12,12,39,'200','Fractura en la tibia','Internar',0,NULL,0,'0','200',CAST(N'2024-01-18T08:00:00.000' AS DateTime),CAST(N'2024-01-18T08:00:00.000' AS DateTime)),
(13,13,45,'300','Rotura de Tibia','Enyesar y mantener reposo',1,48,2,'400','700',CAST(N'2024-01-18T10:00:00.000' AS DateTime),CAST(N'2024-01-20T16:00:00.000' AS DateTime)),
(14,14,42,'300','Chequeo Mensual','Todo normal',0,NULL,0,'0','300',CAST(N'2024-01-20T18:30:00.000' AS DateTime),CAST(N'2024-01-20T18:30:00.000' AS DateTime)),
(15,15,60,'300','Miopia','Lentes',0,NULL,0,'0','300',CAST(N'2024-01-21T12:35:00.000' AS DateTime),CAST(N'2024-01-21T12:35:00.000' AS DateTime)),
(16,16,62,'300','Aritmia Cardiaca','Internación para Control',1,56,1,'150','450',CAST(N'2024-01-23T08:00:00.000' AS DateTime),CAST(N'2024-01-24T16:00:00.000' AS DateTime)),
(17,17,65,'300','Chequeo Mensual','Todo normal',0,NULL,0,'0','300',CAST(N'2024-01-29T18:00:00.000' AS DateTime),CAST(N'2024-01-29T18:00:00.000' AS DateTime)),
(18,18,78,'300','Caries','Tapado de Caries',0,NULL,0,'0','300',CAST(N'2024-01-30T10:15:00.000' AS DateTime),CAST(N'2024-01-30T10:15:00.000' AS DateTime)),
(19,19,84,'300','Migraña','Tomar medicamentos recetados',0,NULL,0,'0','300',CAST(N'2024-01-30T13:45:00.000' AS DateTime),CAST(N'2024-01-30T13:45:00.000' AS DateTime)),
(20,20,96,'200','Resfrio Fuerte','Reposo y Tomar Liquidos',0,NULL,0,'0','200',CAST(N'2024-01-31T09:20:00.000' AS DateTime),CAST(N'2024-01-31T09:20:00.000' AS DateTime)),
(21,21,56,'200','Dolor de espalda','Tomar antibioticos',1,103,3,300,'500',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-04T09:20:00.000' AS DateTime)	),
(22,22,1,'200','Dolor en el pecho','Solicitud de Laboratorios',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(23,23,10,'200','Esguince','Vendado de tobillo',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(24,24,20,'200','Chequeo Anual','Tomar vitaminas',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(25,25,30,'200','Desmayo','Deshidratación',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(26,26,40,'300','Ortodoncia','Ajuste de Ligas',0,NULL,0,0,'300',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(27,27,50,'200','Dolor Espalda','Tomar antibioticos',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(28,28,60,'300','Miopia','Medicion de Lentes',0,NULL,0,0,'300',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(29,29,90,'200','Herida abierta','Curacion y Sutura',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(30,30,100,'300','Dolor pecho','Tomar medicamentos recetados',0,NULL,0,0,'300',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(31,31,110,'200','Taquicardia','Receta medicamentos',0,NULL,0,0,'200',CAST(N'2024-02-01T09:20:00.000' AS DateTime),CAST(N'2024-02-01T09:20:00.000' AS DateTime)),
(32,32,70,'200','Epatitis','Internacion',0,NULL	,0,0,'200',	CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(33,33,40,'300','Muela','Curacion de Molar',0,NULL,0	,0,'300',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(34,34,65,'300','Chequeo Mensual','Receta de vitaminas',0,NULL,0,0,'300',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(35,35,54,'200','Herida abierta','Sutura y Vendado',0,NULL,0,0,'200',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(36,36,85,'300','Radioterapia','Atencion radioterapia',0,NULL,0,0,'300',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(37,37,88,'200','Desmayo','Hidratacion ',0,NULL,0,0,'200',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(38,38,98,'300','Medicion de lentes','Entrega de medida',0,NULL,0,0,'300',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(39,39,108,'200','Medicion de retina','Entrega de medida',0,NULL,0,0,'200',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime)),
(40,40,90,'200','Herida abierta','Sutura de Mano',0,NULL,0,0,'200',CAST(N'2024-03-01T09:20:00.000' AS DateTime),CAST(N'2024-03-01T09:20:00.000' AS DateTime));

SET IDENTITY_INSERT [dbo].[Detalle_Visita] OFF