ALTER TABLE INGREDIENTS_REPAS
ADD CONSTRAINT cp_ingredients_repas
PRIMARY KEY (id_ingredient, id_repas,quantite);