SELECT FLOOR(RAND() * (10000 - 2000 + 1)) + 2000; --entre 2000 y 10000

SELECT UUID();

SELECT CONCAT('Usuario', RAND());

SELECT SUBSTRING_INDEX(UUID(), '-', -1);




DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Código
        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;