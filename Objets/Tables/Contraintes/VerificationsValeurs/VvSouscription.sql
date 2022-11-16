ALTER TABLE SOUSCRIPTION
ADD CONSTRAINT chk_souscription_dates_frais
CHECK (date_debut_souscription< date_fin_souscription AND frais_souscription >= 0 );