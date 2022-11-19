SELECT  masse_initiale,taille_utilisateur, indice_de_masse_corporelle,interpretation
FROM PERSONNE
JOIN PARAMETRES_MEMBRES
USING  (id_personne)
JOIN CALCUL_IMC
ON id_personne=id_membre
WHERE nom_personne='&nom_personne';