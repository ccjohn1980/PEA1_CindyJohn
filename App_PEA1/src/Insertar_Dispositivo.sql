DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_dispositivo;
CREATE PROCEDURE insertar_dispositivo(
  IN  _d_nombre  VARCHAR(30),
  IN  _d_precio  INT,
  IN _d_tipo VARCHAR (30),
  OUT _d_confirm INT
)
BEGIN
    DECLARE _v_id_dis INT;
    SET _d_nombre = UPPER(_d_nombre);
    SET _d_precio = _d_precio * 3.5;
    SET _d_tipo = UPPER(_d_tipo);
    --
    SELECT FLOOR(1 + RAND() * 60) INTO _v_id_dis;
    --
    INSERT INTO Dispositivos
        (id_dispositivo, nom_dis, precio, tipo)
        VALUES
        (_v_id_dis ,_d_nombre , _d_precio, _d_tipo);
    --
    IF ROW_COUNT() > 0 THEN
        SET _d_confirm = 1;
    ELSE
        SET _d_confirm = 0;
    END IF;
END$$
DELIMITER ;
