CREATE TABLE [staging].[Paciente](	
    [SK_Paciente] INT NOT NULL,
    [DNI] INT NOT NULL UNIQUE,
    [Nombre] NVARCHAR(50) NOT NULL,
    [Apellido] NVARCHAR(50) NOT NULL,
    [Fecha_Nacimiento] DATETIME NOT NULL,
    [Nro_Seguro] INT NOT NULL,
);
GO