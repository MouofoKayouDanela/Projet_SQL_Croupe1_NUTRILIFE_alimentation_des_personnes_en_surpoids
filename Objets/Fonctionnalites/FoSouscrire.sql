PROMPT ******************** SOUSCRIPTION A UN PROGRAMME DE REGIME ********************
INSERT INTO SOUSCRIPTION
(
    id_utilisateur,
    date_debut_souscription,
    date_fin_souscription,
    frais_souscription,
    option_souscription,
    occurence_souscription,
    id_programme_regime
)
VALUES
(
    SELECT ut.id_utilisateur
    FROM UTILISATEUR ut
    JOIN PERSONNE pe
    ON (ut.id_utilisateur = pe.id_personne)
    WHERE &nom_de_l_utilisateur =  pe.nom_personne
    AND &prenom_de_l_utilisateur = pe.prenom_utilisateur,
    TO_DATE(SYSDATE, "dd/mm/yyyy"),
    SELECT CASE 
            WHEN &issue = 'MENSUELLE' THEN SYSDATE + 27
            WHEN issue = 'ANNUELLE' THEN SYSDATE + 
    &frais_souscription
);