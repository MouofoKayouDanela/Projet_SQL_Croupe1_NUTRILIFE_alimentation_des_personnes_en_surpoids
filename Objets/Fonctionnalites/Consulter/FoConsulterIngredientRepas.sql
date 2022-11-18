UNDEFINE nom_repas
SELECT repa.nom_repas "Nom du repas",ing.nom_ingredient "Ingredient",inrep.quantite||' gramme(s)'  "Quantite"
FROM REPAS repa 
JOIN INGREDIENTS_REPAS inrep 
ON repa.id_repas = inrep.id_repas
JOIN INGREDIENT ing 
ON inrep.id_ingredient = ing.id_ingredient
WHERE nom_repas = '&nom'
ORDER BY repa.nom_repas;