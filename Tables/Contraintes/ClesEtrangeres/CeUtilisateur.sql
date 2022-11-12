ALTER TABLE UTILISATEUR
ADD CONSTRAINT ce_utilisateur_id_utilisateur
FOREIGN KEY id_utilisateur 
REFERENCES PERSONNE(id_personne);