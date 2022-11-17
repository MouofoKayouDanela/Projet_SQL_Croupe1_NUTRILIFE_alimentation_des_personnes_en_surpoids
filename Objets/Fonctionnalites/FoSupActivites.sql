UNDEFINE nom
UNDEFINE description_act
set DEFINE on
begin
delete from ACTIVITE
WHERE nom_activite='&nom' AND description_activite='&description_act';
end;
/