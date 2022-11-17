ALTER TABLE PERSONNE
ADD CONSTRAINT personne_unique UNIQUE(nom_personne,prenom_personne);