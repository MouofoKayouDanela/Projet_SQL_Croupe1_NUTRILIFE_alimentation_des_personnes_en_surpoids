SELECT nom_repas,jour_repas,periode,type_repas
FROM PERSONNE
JOIN PARAMETRES_MEMBRES
USING (id_personne)
JOIN SOUSCRIPTION
USING (id_utilisateur)
JOIN PROGRAMME_REGIME
USING(id_programme_regime)
JOIN REGIME_REPAS
USING(id_programme_regime)
JOIN REPAS
USING(id_repas)
WHERE nom_personne= '&nomPersonne' AND jour_repas = &jourRepas
ORDER BY periode;