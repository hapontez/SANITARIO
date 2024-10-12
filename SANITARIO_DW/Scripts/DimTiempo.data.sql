IF NOT EXISTS(SELECT TOP(1) 1 FROM [dbo].[DimTiempo])
BEGIN
    BEGIN TRAN 
        DECLARE @startdate DATE = '2024-01-01',
                @enddate   DATE = '2025-01-01';
        
        DECLARE @datelist TABLE (
            Fecha DATETIME
        );

        -- Generar lista de fechas
        WHILE (@startdate <= @enddate)
        BEGIN 
            INSERT INTO @datelist(Fecha)
            SELECT @startdate
            SET @startdate = DATEADD(dd, 1, @startdate);
        END

        INSERT INTO dbo.DimTiempo (
			Id_Tiempo,
            Fecha,
            Dia,
            Mes,
            Año,
            Semana,
            Trimestre
        )
        SELECT 
			Id_Tiempo = CONVERT(INT,CONVERT(VARCHAR,dl.Fecha,112)), 
            Fecha = dl.Fecha,
            Dia = RIGHT('0' + CAST(DAY(dl.Fecha) AS VARCHAR(2)), 2),
            Mes = CASE MONTH(dl.Fecha)
                    WHEN 1 THEN 'Enero'
                    WHEN 2 THEN 'Febrero'
                    WHEN 3 THEN 'Marzo'
                    WHEN 4 THEN 'Abril'
                    WHEN 5 THEN 'Mayo'
                    WHEN 6 THEN 'Junio'
                    WHEN 7 THEN 'Julio'
                    WHEN 8 THEN 'Agosto'
                    WHEN 9 THEN 'Septiembre'
                    WHEN 10 THEN 'Octubre'
                    WHEN 11 THEN 'Noviembre'
                    WHEN 12 THEN 'Diciembre'
                  END,
            Año = CAST(YEAR(dl.Fecha) AS NVARCHAR(4)),
            Semana = RIGHT('0' + CAST(DATEPART(WEEK, dl.Fecha) AS VARCHAR(2)), 2),
            Trimestre = CAST(DATEPART(QUARTER, dl.Fecha) AS NVARCHAR(2))
        FROM @datelist dl
        LEFT OUTER JOIN dbo.DimTiempo dt ON (dl.Fecha = dt.Fecha)
        WHERE dt.Fecha IS NULL;

    COMMIT TRAN
END
GO
