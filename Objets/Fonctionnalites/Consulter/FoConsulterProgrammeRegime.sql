SELECT nom_repas,jour_repas,periode,type_repas
FROM PERSONNE pe
JOIN PARAMETRES_MEMBRES m
ON pe.id_personne=m.id_personne
JOIN UTILISATEUR ut
ON pe.id_personne=ut.id_utilisateur
JOIN SOUSCRIPTION s
ON m.id_utilisateur=s.id_utilisateur
JOIN PROGRAMME_REGIME 
USING(id_programme_regime)
JOIN REGIME_REPAS 
USING(id_programme_regime)
JOIN REPAS r
USING(id_repas)
WHERE nom_personne= '&nomPersonne' AND ut.mot_de_passe= '&mot_de_passe'
ORDER BY periode;