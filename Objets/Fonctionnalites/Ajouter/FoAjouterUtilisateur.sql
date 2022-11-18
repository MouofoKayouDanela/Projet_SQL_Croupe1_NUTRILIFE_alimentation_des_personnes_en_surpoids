UNDEFINE mail 
UNDEFINE password
INSERT INTO UTILISATEUR(id_utilisateur, email, mot_de_passe, jour_inscription)
VALUES(seq_personne.nextval,'&mail','&password',SYSDATE);