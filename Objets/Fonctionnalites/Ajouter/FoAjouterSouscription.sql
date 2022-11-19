PROMPT ******************** SOUSCRIPTION A UN PROGRAMME DE REGIME ********************
UNDEFINE nom_de_l_utilisateur
UNDEFINE prenom_de_l_utilisateur
UNDEFINE option_de_la_souscription
UNDEFINE nom_du_programme
UNDEFINE nom_du_beneficiaire
UNDEFINE prenom_du_beneficiaire
UNDEFINE masse_du_beneficiaire
UNDEFINE taille_du_beneficiaire
INSERT ALL
INTO SOUSCRIPTION
(
    id_utilisateur,
    date_debut_souscription,
    option_souscription,
    date_fin_souscription,
    frais_souscription,
    id_programme_regime
)
VALUES
(
    (SELECT ut.id_utilisateur
    FROM UTILISATEUR ut
    JOIN PERSONNE pe
    ON (ut.id_utilisateur = pe.id_personne)
    WHERE '&&nom_de_l_utilisateur' =  pe.nom_personne
    AND '&&prenom_de_l_utilisateur' = pe.prenom_personne
    AND '&mot_de_passe_de_l_utilisateur' = ut.mot_de_passe),
    TO_DATE(SYSDATE, 'dd/mm/yyyy'),
    '&&option_de_la_souscription',
    (SELECT DECODE 
            ( '&option_de_la_souscription', 'MENSUELLE', TO_DATE(SYSDATE + 27, 'dd/mm/yyyy')
                                          , 'ANNUELLE', TO_DATE(SYSDATE + (27 * 12), 'dd/mm/yyyy')
                                          , 'BIHEBDOMMADAIRE', TO_DATE( SYSDATE + 13, 'dd/mm/yyyy')
                                          , 'HEBDOMMADAIRE', TO_DATE(SYSDATE + 6, 'dd/mm/yyyy')
            )
    FROM DUAL),
    (SELECT DECODE 
            ( '&option_de_la_souscription', 'MENSUELLE', 5000*4
                                          , 'ANNUELLE', 5000*4*12
                                          , 'BIHEBDOMMADAIRE', 5000*2
                                          , 'HEBDOMMADAIRE', 5000
            )
    FROM DUAL),
    (SELECT id_programme_regime
    FROM PROGRAMME_REGIME
    WHERE '&nom_du_programme' = nom_regime)
)
INTO PARAMETRES_MEMBRES
(
    id_personne,
    id_utilisateur,
    masse_initiale,
    taille_utilisateur,
    date_debut_souscription
)
VALUES
(
    (SELECT id_personne
    FROM PERSONNE
    WHERE '&nom_du_beneficiaire' = nom_personne 
    AND '&prenom_du_beneficiaire' = prenom_personne),
    (SELECT ut.id_utilisateur
    FROM UTILISATEUR ut
    JOIN PERSONNE pe
    ON (ut.id_utilisateur = pe.id_personne)
    WHERE '&nom_de_l_utilisateur' =  pe.nom_personne
    AND '&prenom_de_l_utilisateur' = pe.prenom_personne),
    &masse_du_beneficiaire,
    &taille_du_beneficiaire,
    TO_DATE(SYSDATE, 'dd/mm/yyyy')
)
SELECT * FROM DUAL;