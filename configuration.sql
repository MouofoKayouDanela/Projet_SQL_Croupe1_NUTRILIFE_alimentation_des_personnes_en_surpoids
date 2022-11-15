SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF
SET VERIFY OFF
alter session set container=xepdb1;
DEFINE pass     = nl
DEFINE tbs      = users
DEFINE ttbs     = temp
DEFINE pass_sys = nl
DEFINE log_path = logs
DEFINE connect_string     = //localhost:1521/xepdb1
DEFINE spool_file = &log_path.alimentation.log
SPOOL &spool_file