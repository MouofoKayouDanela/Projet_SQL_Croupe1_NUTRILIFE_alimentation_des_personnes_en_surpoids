UNDEFINE mail 
UNDEFINE password
UNDEFINE jour_inscription 
DEFINE mail = &mail_utilisateur;
DEFINE password = &password_utilisateur;
DEFINE jour_inscription = &jour_utilisateur;
BEGIN
INSERT INTO UTILISATEUR(id_utilisateur,mail_utilisateur,password_utilisateur,jour_utilisateur)
VALUES(seq_personne.nextval,'&mail_utilisateur','&password_utilisateur','&jour_utilisateur')
WHERE (mail_utilisateur != mail AND password_utilisateur != password);

SET DEFINE ON
BEGIN  
DELETE FROM UTILISATEUR
WHERE mail_utilisateur = '&mail' AND password_utilisateur = '&password';
END;
/