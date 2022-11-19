INSERT ALL 
INTO PERSONNE( 
    id_personne,
    nom_personne,
    prenom_personne,
    date_naissance,
    genre)
VALUES (
    seq_personne.nextval,
    '&nom_de_personne',
    '&prenom_de_personne',
    TO_DATE('&date','dd/mm/yyyy'),
    '&genre_personne'
) 
INTO UTILISATEUR(
    id_utilisateur,
    email,
    mot_de_passe,
    jour_inscription
)  
VALUES(
    seq_personne.nextval,
    '&e_mail',
    '&password',
    SYSDATE
) 
SELECT * FROM DUAL;