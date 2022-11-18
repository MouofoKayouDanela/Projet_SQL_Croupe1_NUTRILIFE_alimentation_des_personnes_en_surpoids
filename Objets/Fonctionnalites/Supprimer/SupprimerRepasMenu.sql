UNDEFINE nomRegime
UNDEFINE jour_repas
UNDEFINE id_repas
DELETE FROM 
(
    SELECT * FROM REGIME_REPAS
    WHERE id_programme_regime ='&nomRegime' AND jour_repas=&jourRepas
)
WHERE id_repas=&id;