PROMPT*************** Suppression utilisateurs eventuels***************
DROP USER al CASCADE;
PROMPT*************** Creation utilisateur ***************
CREATE USER al IDENTIFIED BY &pass;

ALTER USER al DEFAULT TABLESPACE &tbs
              QUOTA UNLIMITED ON &tbs;

ALTER USER al TEMPORARY TABLESPACE &ttbs;

GRANT CREATE SESSION, CREATE VIEW, ALTER SESSION, CREATE SEQUENCE TO al;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE , UNLIMITED TABLESPACE TO al;
CONNECT sys/&pass_sys@&connect_string AS SYSDBA;
GRANT execute ON sys.dbms_stats TO al;
CONNECT al/&pass@&connect_string