CREATE INDEX Pers_Utilisateur_ix
ON UTILISATEUR (id_utilisateur);

CREATE INDEX Pers_param_utili_ix
ON PARAMETRES_MEMBRES (id_utilisateur);

CREATE INDEX Pers_param_ix
ON PARAMETRES_MEMBRES (id_personne);

CREATE INDEX Utili_Sous_ix
ON SOUSCRIPTION (id_utilisateur);

CREATE INDEX ProgReg_Sous_ix
ON SOUSCRIPTION (id_programme_regime);

CREATE INDEX Prog_Acti_ix
ON REGIME_ACTIVITE (id_regime_programme);

CREATE INDEX Prog_activite_ix
ON REGIME_ACTIVITE (id_activite);

CREATE INDEX Reg_Repas_ix
ON REGIME_REPAS (id_programme_regime);

CREATE INDEX Regim_repas_ix
ON REGIME_REPAS (id_repas);

CREATE INDEX Ing_repas_ix
ON INGREDIENTS_REPAS (id_ingredient);

CREATE INDEX Ingred_repas_ix
ON INGREDIENTS_REPAS (id_repas);

commit;