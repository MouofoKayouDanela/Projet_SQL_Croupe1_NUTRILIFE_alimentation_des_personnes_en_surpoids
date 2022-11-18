SELECT rep.nom_repas,rep.prix_repas
FROM Repas rep
JOIN Regime_repas reg
ON (reg.id_repas=rep.id_repas)
JOIN Programme_regime prog
ON (prog.id_programme_regime=reg.id_programme_regime)
WHERE (nom_regime like '%diabetique%');