ALTER TABLE PARAMETRES_MEMBRES
ADD CONSTRAINT chk_parametres_membres
CHECK
(
    masse_initiale > 0 AND 
    taille_utilisateur > 0 AND 
    (ROUND((masse_initiale / (taille_utilisateur * taille_utilisateur)), 1) BETWEEN 25 AND 29.9)
);