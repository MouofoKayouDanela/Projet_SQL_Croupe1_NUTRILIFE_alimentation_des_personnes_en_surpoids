PROMPT ******************** EDITER UNE TABLE A VALEUR UNIQUE ********************
UNDEFINE nom_de_la_table
UNDEFINE nom_de_la_colonne
UNDEFINE nom_de_la_colonne_cle_primaire
UNDEFINE nom_de_l_ancienne_valeur
DESCRIBE &&nom_de_la_table;
UPDATE &nom_de_la_table
SET &&nom_de_la_colonne = '&nom_de_la_valeur_nouvelle'
WHERE &&nom_de_la_colonne_cle_primaire = (
                                            SELECT &nom_de_la_colonne_cle_primaire
                                            FROM &nom_de_la_table
                                            WHERE &nom_de_la_colonne = '&nom_de_l_ancienne_valeur'
                                        );