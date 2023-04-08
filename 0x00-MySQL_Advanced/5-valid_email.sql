-- Write a SQL script that creates a trigger that resets the attribute valid_email
-- only when the email has been changed.
-- Context: Nothing related to MySQL, but perfect for user email validation -
-- distribute the logic to the database itself!

CREATE TRIGGER resets_valid_email AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF (NEW.email != OLD.email) THEN
		UPDATE users SET valid_email = 0 WHERE id = NEW.id
	END IF;
END;
