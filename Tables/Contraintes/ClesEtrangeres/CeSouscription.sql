ALTER TABLE SOUSCRIPTION
ADD (
    CONSTRAINT ce_souscription_id_utilisateur
    FOREIGN KEY (id_utilisateur) REFERENCES UTILISATEUR (id_utilisateur),
    CONSTRAINT CE_souscription_id_programme_regime
    FOREIGN KEY(id_programme_regime) REFERENCES PROGRAMME_REGIME(id_programme_regime)
);