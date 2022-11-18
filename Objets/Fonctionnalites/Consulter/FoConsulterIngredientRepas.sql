UNDEFINE nom_du_repas
SELECT ing.nom_ingredient "Ingredient",inrep.quantite||' gramme(s)'  "Quantite"
FROM REPAS repa 
JOIN INGREDIENTS_REPAS inrep 
ON (repa.id_repas = inrep.id_repas)
JOIN INGREDIENT ing 
ON (inrep.id_ingredient = ing.id_ingredient)
WHERE nom_repas LIKE '%&nom_du_repas%'
ORDER BY repa.nom_repas;