--https://docs.microsoft.com/en-us/sql/machine-learning/install/sql-machine-learning-services-windows-install?view=sql-server-ver15
--SELECT * FROM   sys.dm_exec_sessions WHERE  program_name IN (N'Microsoft SQL Server Management Studio - Query')
Exec sp_configure 'external scripts enabled',1
reconfigure with override
-- Reiniciar el sql server service
exec sp_configure 'external scripts enabled'
-- script para probar
exec sp_execute_external_script @language=N'R',
@script =N' OutputDataSet <- InputDataSet',
@input_data_1=N'select 1 as hello'
with result sets (([hello] int not null));
go

