ALTER TABLE PERSONNE
ADD (CONSTRAINT vu_personne_pers UNIQUE(nom_personne,prenom_personne));,
CONSTRAINT vu_personne_prenom UNIQUE(prenom_personne)
);