PROMPT*************** Suppression utilisateurs eventuels***************
DROP USER nl CASCADE;
PROMPT*************** Creation utilisateur ***************
CREATE USER nl IDENTIFIED BY &pass;

ALTER USER nl DEFAULT TABLESPACE &tbs
              QUOTA UNLIMITED ON &tbs;

ALTER USER nl TEMPORARY TABLESPACE &ttbs;

GRANT CREATE SESSION, CREATE VIEW, ALTER SESSION, CREATE SEQUENCE TO nl;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE , UNLIMITED TABLESPACE TO nl;
CONNECT sys/&pass_sys@&connect_string AS SYSDBA;
GRANT execute ON sys.dbms_stats TO nl;
CONNECT nl/&pass@&connect_string