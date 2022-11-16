UNDEFINE nom
UNDEFINE prenom
UNDEFINE date_nais
UNDEFINE genre
DEFINE nom =  &nom_personne
DEFINE prenom = &prenom_personne
DEFINE date_nais =&date_naissance
DEFINE genre=&genre;
INSERT INTO PERSONNE(id_personne,nom_personne,prenom_personne,date_naissance,genre)
VALUES(seq_personne.nextval,'nom','prenom','date_nais','genre')
WHERE (nom_personne != nom AND prenom_personne != prenom);

set DEFINE on
begin
delete from personne
WHERE nom_personne='&nom' AND prenom_personne='&prenom';
end;
/
