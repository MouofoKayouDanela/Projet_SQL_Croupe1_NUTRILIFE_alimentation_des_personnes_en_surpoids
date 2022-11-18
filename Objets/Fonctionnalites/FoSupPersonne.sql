UNDEFINE nom
UNDEFINE prenom
set DEFINE on
begin
delete from personne
WHERE nom_personne='&nom' AND prenom_personne='&prenom';
end;
/