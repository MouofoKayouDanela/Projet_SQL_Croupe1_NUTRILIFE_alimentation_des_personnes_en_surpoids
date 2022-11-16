ALTER TABLE SOUSCRIPTION (
  MODIFY  id_utilisateur INT NOT NULL
  MODIFY  date_debut_souscription DATE NOT NULL
  MODIFY  date_fin_souscription DATE NOT NULL
  MODIFY  frais_souscription float(50) NOT NULL
  MODIFY  option_souscription VARCHAR(50) NOT NULL
  MODIFY id_programme_regime INT NOT NULL
;