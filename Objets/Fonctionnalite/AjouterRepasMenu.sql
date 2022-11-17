
INSERT INTO REGIME_REPAS(id_programme_regime,id_repas,jour_repas,periode,type_repas)
VALUES(&ID,(SELECT id_repas FROM REPAS WHERE id_repas=&id_r),'&jour',&periode,'&type_repas' );

