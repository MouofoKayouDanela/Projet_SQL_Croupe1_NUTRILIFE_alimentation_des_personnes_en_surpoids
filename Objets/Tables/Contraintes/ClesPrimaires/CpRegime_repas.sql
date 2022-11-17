ALTER TABLE REGIME_REPAS
ADD CONSTRAINT cp_regime_repas
PRIMARY KEY (id_programme_regime,id_repas,jour_repas,periode);