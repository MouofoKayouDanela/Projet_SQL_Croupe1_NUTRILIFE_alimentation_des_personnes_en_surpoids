UNDEFINE nom
UNDEFINE prenom
UNDEFINE date_nais
UNDEFINE genre
INSERT INTO PERSONNE(id_personne,nom_personne,prenom_personne,date_naissance,genre)
VALUES(seq_personne.nextval,'&nom','&prenom','&date_nais','&genre')
;
