#assign env var to local var
$dd_sql_server_pwd=gv DATADOG_SQL_SERVER_PWD -valueOnly

#set pwd in tmp file
((Get-Content -Path sql_server_datadog_setup.sql -Raw) -replace 'PASSWORD_VALUE', $dd_sql_server_pwd) | Out-File sql_server_datadog_setup1.sql

#clear env var
Set-Variable -Name DATADOG_SQL_SERVER_PWD -Value PASSWORD
$dd_sql_server_pwd=gv DATADOG_SQL_SERVER_PWD -valueOnly

#run sql to setup dd in sql server
sqlcmd -i sql_server_datadog_setup1.sql -o MyOutput.rpt

#rm tmp files
rm sql_server_datadog_setup1.sql
rm  MyOutput.rpt

$dd_sql_server_pwd=gv DATADOG_SQL_SERVER_PWD -valueOnly
