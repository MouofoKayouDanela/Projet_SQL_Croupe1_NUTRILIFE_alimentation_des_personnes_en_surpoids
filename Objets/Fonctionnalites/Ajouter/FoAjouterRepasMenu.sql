
INSERT INTO
 REGIME_REPAS
 (id_programme_regime,id_repas,jour_repas,periode,type_repas)
VALUES
(&ID,
(SELECT id_repas FROM REPAS WHERE nom_repas='&nom_repas_a_ajouter'),
'&jour',
&periode,
'&type_repas' );

