# z_pov  
  
Introduction  
--  
  
Configure SQL Server for Datadog integration.  
-
  
1) From where you will execute the powershell script:

NOTE: replace password with the password you want to use  
Set-Variable -Name DATADOG_SQL_SERVER_PWD -Value password  
  
2) Execute the powershell script  
  
.\powershell_sql_server_datadog_setup.ps1  
  
Datadog Configuration Files  
-
  
1) In the directory datadog_config directory there is a windows and a linux datadog.yaml file for each OS.  
  
2) The configuration files each have APM, Logs and Live Processes configured.  
  
3) For each file, api_key: <api_key> should have <api_key> replaced with the API key from your Datadog organization.  This can be found [here.](https://app.datadoghq.com/account/settings#api)

4) For APM, the env variable should be set in the configuration 

5) 
