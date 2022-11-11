ALTER TABLE PERSONNE
ADD CONSTRAINT chk_personne_id_personne
CHECK(date_naissance < SYSDATE);