SELECT nom_repas, prix_repas
FROM REPAS repa 
join REGIME_REPAS regpa 
ON repa.id_repas = regpa.id_repas 
JOIN PROGRAMME_REGIME prog 
ON regpa.id_programme_regime = prog.id_programme_regime
WHERE nom_regime LIKE '%hypertension%';