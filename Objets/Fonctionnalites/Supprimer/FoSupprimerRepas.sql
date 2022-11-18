UNDEFINE nom 
UNDEFINE prix 
SET DEFINE ON 
BEGIN 
DELETE FROM Repas 
WHERE nom_repas = '&nom' AND prix_repas = &prix; 
END;
/