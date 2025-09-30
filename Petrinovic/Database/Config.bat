@echo Configurando Base de Datos
@echo off
sqlcmd -Q "CREATE LOGIN Petrinovic WITH PASSWORD=N'Bartolo', DEFAULT_DATABASE=master, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF EXEC master..sp_addsrvrolemember @loginame = N'Petrinovic', @rolename = N'sysadmin' RESTORE DATABASE PetrinovicATS FROM DISK='C:\Petrinovic\Database\DataBase.dat' WITH  FILE = 1,  MOVE N'PetrinovicATS_dat' TO N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PetrinovicATS.mdf',  MOVE N'PetrinovicATS_log' TO N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PetrinovicATS_1.ldf',  NOUNLOAD,  REPLACE,  STATS = 10"
@echo Base de datos Creada
pause
