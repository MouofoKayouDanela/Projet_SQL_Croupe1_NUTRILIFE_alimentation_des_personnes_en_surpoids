ALTER TABLE REGIME_REPAS
  MODIFY  id_programme_regime  INT NOT NULL
  MODIFY  id_repas INT NOT NULL
  MODIFY  jour_repas DATE NOT NULL
  MODIFY  periode VARCHAR(50) NOT NULL
  MODIFY type_repas VARCHAR(50) NOT NULL
;