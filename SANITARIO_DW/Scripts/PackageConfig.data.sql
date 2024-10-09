IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Hospital')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Customer', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Medico')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Staff', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Paciente')
 BEGIN
  INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Store', 0)
 END
GO
