ALTER TABLE REGIME_REPAS
ADD CONSTRAINT vv_regime_repas
  CHECK( jour_repas>date_debut_abonnement);