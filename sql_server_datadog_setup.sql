CREATE LOGIN testing WITH PASSWORD = 'PASSWORD_VALUE';
CREATE USER testing FOR LOGIN testing;
GRANT SELECT on sys.dm_os_performance_counters to testing;
GRANT VIEW SERVER STATE to testing;
