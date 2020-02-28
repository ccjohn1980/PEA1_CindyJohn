DELIMITER $$
DROP PROCEDURE IF EXISTS mostrar_dispositivo;
CREATE PROCEDURE mostrar_dispositivo()
BEGIN
    Select * from Dispositivos;
END$$
DELIMITER ;
