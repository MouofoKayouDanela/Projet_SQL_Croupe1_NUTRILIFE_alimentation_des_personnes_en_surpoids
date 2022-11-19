UNDEFINE mail 
UNDEFINE password
INSERT INTO UTILISATEUR(id_utilisateur, email, mot_de_passe, jour_inscription)
VALUES((SELECT id_personne
            FROM PERSONNE
            WHERE nom_personne = '&nom_de_personne' 
            AND prenom_personne = '&prenom'),
    '&mail',
    '&password',
    SYSDATE);