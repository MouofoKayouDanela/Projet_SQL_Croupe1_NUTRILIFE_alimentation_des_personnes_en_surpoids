PROMPT ******************** LISTE DES REPAS D'UN REGIME ********************
SELECT nom_repas
FROM REPAS rep 
JOIN REGIME_REPAS reg_rep
ON (rep.id_repas = reg_rep.id_repas)
JOIN PROGRAMME_REGIME prog 
ON (reg_rep.id_programme_regime = prog.id_programme_regime)
WHERE '&nom_du_regime' = nom_regime;