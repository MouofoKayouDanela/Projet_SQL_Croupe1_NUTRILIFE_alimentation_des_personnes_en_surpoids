ALTER TABLE UTILISATEUR
ADD (CONSTRAINT vu_utilisateur UNIQUE (email)
     CONSTRAINT vu_utilisateur UNIQUE (mot_de_passe));