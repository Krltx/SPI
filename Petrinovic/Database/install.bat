@echo off
@echo Instalando motor de base de datos SQL 2008.......

SQLEXPRWT_x64_ENU.exe /QS /ACTION=Install /FEATURES=SQLENGINE,SSMS /INSTANCENAME=MSSQLSERVER /SQLSVCACCOUNT="NT AUTHORITY\NETWORKSERVICE" /SQLSVCSTARTUPTYPE=Automatic /SQLCOLLATION=Modern_Spanish_CI_AS /SECURITYMODE=SQL /SAPWD="morfeo" /IACCEPTSQLSERVERLICENSETERMS /SkipRules=PowerShell20Check

@echo Instalación finalizada

pause
Explorer /root,C:\Petrinovic\Database
pause