UNDEFINE nom
UNDEFINE description_act
SET DEFINE ON
begin
DELETE FROM ACTIVITE
WHERE nom_activite='&nom' AND description_activite='&description_act';
END;
/