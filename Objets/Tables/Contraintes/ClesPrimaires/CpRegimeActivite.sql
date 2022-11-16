ALTER TABLE REGIME_ACTIVITE
ADD CONSTRAINT cp_regime_activite_id
PRIMARY KEY(id_regime_programme, id_activite, jour_activite);