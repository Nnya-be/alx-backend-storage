-- A trigger that resets the attribut valid_email only when the email has been changed.

DROP TRIGGER IF EXISTS reset_email;

DELIMITER ;;

CREATE TRIGGER IF NOT EXISTS reset_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END ;;
DELIMITER ;