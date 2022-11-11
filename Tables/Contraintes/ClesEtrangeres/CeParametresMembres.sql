ALTER TABLE PARAMETRES_MEMBRES
(
    ADD CONSTRAINT ce_parametres_membres_id_personne
    FOREIGN KEY id_personne 
    REFERENCES PERSONNE(id_personne),
    ADD CONSTRAINT ce_parametres_membres_id_utilisateur_date_debut_souscription
    FOREIGN KEY (id_utilisateur, date_debut_souscription) 
    REFERENCES PARAMETRES_MEMBRES(id_utilisateur, date_debut_souscription)
);