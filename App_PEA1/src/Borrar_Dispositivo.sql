DELIMITER $$
DROP PROCEDURE IF EXISTS borrar_dispositivo;
CREATE PROCEDURE borrar_dispositivo(
nom_dis varchar (30)
)
BEGIN
   delete from Dispositivos where nom_dis='CARRO';
END$$
DELIMITER ;


