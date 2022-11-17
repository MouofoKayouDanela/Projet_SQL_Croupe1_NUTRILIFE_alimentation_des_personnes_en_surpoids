ALTER TABLE REGIME_ACTIVITE
ADD(
    CONSTRAINT ce_regime_activite_id_programme_regime
    FOREIGN KEY (id_regime_programme)
    REFERENCES PROGRAMME_REGIME(id_programme_regime),
    CONSTRAINT ce_regime_activite_id_activite
    FOREIGN KEY (id_activite)
    REFERENCES ACTIVITE(id_activite)
);