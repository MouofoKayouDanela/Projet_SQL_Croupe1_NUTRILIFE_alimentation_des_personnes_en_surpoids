UNDEFINE nom 
UNDEFINE prix
INSERT INTO REPAS (id_repas, nom_repas, prix_repas)
VALUES(seq_repas.nextval,'&nom',&prix);