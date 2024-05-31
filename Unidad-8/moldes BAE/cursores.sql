DELIMITER //
CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;