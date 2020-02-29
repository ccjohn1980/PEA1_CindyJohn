DELIMITER $$
DROP PROCEDURE IF EXISTS actualizar_dispositivo;
CREATE PROCEDURE actualizar_dispositivo (
IN nombre VARCHAR(30),
IN precio INT,
IN tipo INT
)
BEGIN
update dispositivos1 set nombre=nombre,precio=precio,tipo=tipo;
END$$
DELIMITER ;