SELECT rep.nom_repas,prog.nom_regime
FROM REPAS rep
JOIN REGIME_REPAS reg
ON (rep.id_repas=reg.id_programme_regime)
JOIN PROGRAMME_REGIME prog
ON(reg.id_programme_regime=rep.id_repas)
WHERE '&nom_regime'=prog.nom_regime 
AND &jour = reg.jour_repas
GROUP BY rep.nom_repas,prog.nom_regime
ORDER BY reg.jour_repas;