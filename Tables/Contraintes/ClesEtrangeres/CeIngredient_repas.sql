ALTER TABLE INGREDIENT_REPAS
ADD(
        CONSTRAINT ce_ingredients_repas_id_ingredient
        FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT (id_ingredient),
        CONSTRAINT ce_ingredients_repas_id_repas
        FOREIGN KEY (id_repas) REFERENCES REPAS (id_repas)
);