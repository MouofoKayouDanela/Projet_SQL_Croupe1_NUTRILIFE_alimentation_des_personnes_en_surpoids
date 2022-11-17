UNDEFINE nom
UNDEFINE description_act
INSERT INTO ACTIVITE(id_activite,nom_activite,description_activite)
VALUES(seq_acivite.nextval,'&nom','&description_act');