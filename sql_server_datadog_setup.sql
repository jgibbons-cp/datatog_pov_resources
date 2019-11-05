CREATE LOGIN datadog WITH PASSWORD = 'PASSWORD_VALUE';
CREATE USER datadog FOR LOGIN datadog;
GRANT SELECT on sys.dm_os_performance_counters to datadog;
GRANT VIEW SERVER STATE to datadog;
