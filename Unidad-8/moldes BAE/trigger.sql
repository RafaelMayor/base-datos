SET FOREIGN_KEY_CHECKS=0;

DELIMITER $$
CREATE TRIGGER nombre_trigger
AFTER INSERT ON nombre_tabla
FOR EACH ROW
BEGIN
//Whatever
END $$