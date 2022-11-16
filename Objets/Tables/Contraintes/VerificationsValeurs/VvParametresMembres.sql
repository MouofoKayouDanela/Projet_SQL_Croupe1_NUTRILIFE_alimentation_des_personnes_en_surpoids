ALTER TABLE PARAMETRES_MEMBRES
ADD CONSTRAINT chk_parametres_membres
CHECK
(
    masse_initiale > 0 AND 
    taille_utilisateur > 0 
);