ALTER TABLE REPAS
ADD CONSTRAINT vv_repas
  CHECK( prix_repas>0 AND periode<19);