ALTER TABLE REGIME_REPAS
ADD CONSTRAINT vv_regime_repas
  CHECK( periode<19 AND jour_repas>0);