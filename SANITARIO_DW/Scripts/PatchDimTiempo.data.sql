IF NOT EXISTS (
    SELECT TOP(1) 1
    FROM [dbo].[DimTiempo]
    WHERE [Id_Tiempo] = 0
)
BEGIN
    INSERT INTO [dbo].[DimTiempo]
           ([Id_Tiempo]
           ,[Fecha]
           ,[Dia]
           ,[Mes]
           ,[Año]
           ,[Semana]
           ,[Trimestre])
     VALUES
           (0
           ,GETDATE()
           ,'00'
           ,'N/A'
           ,'0000'
           ,'00'
           ,'0');
END
GO