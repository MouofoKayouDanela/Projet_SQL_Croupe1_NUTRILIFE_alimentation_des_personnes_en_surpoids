ALTER TABLE REGIME_REPAS
ADD(
        CONSTRAINT ce_regime_repas_id_programme_regime
        FOREIGN KEY (id_programme_regime) REFERENCES PROGRAMME_REGIME (id_programme_regime),
        CONSTRAINT ce_regime_repas_id_repas
        FOREIGN KEY (id_repas) REFERENCES REPAS (id_repas)
);