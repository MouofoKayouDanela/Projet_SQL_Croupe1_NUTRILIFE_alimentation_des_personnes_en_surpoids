ALTER TABLE REGIME_ACTIVITE
ADD CONSTRAINT chk_regime_activite_duree
CHECK(duree > 0);