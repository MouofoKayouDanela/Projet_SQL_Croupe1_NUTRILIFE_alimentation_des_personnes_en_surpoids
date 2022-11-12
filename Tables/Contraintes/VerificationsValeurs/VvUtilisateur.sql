ALTER TABLE UTILISATEUR
ADD CONSTRAINT chk_utilisateur_id_utilisateur
CHECK(date_inscription <= SYSDATE);