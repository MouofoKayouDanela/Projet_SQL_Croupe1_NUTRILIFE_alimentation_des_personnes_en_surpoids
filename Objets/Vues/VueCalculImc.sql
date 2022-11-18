CREATE VIEW CALCUL_IMC(id_utilisateur, indice_de_masse_corporelle, interpretation) AS
SELECT id_utilisateur,
       ROUND((masse_initiale / (taille_utilisateur * taille_utilisateur)), 1),
       CASE 
           WHEN ROUND((masse_initiale / (taille_utilisateur * taille_utilisateur)), 1)  < 18.5 THEN 'individu maigre'
           WHEN ROUND((masse_initiale / (taille_utilisateur * taille_utilisateur)), 1) BETWEEN 18.5 AND 24.9 THEN 'individu normal'
           WHEN ROUND((masse_initiale / (taille_utilisateur * taille_utilisateur)), 1) BETWEEN 25 AND 29.9 THEN 'individu en surpoids'
           ELSE 'individu obese'
        END
FROM PARAMETRES_MEMBRES-
;