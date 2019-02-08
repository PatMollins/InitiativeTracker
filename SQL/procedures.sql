DELIMITER //

CREATE PROCEDURE login(IN name VARCHAR(255))
BEGIN
IF EXISTS (SELECT username FROM users WHERE username = name) THEN
  SELECT username FROM users WHERE username = name;
 ELSE
  INSERT INTO users(username) VALUES (name);
 END IF;
END //

CREATE PROCEDURE getMonster(IN IDin INT)
BEGIN
  SELECT id 
    FROM monsters WHERE id = IDin;
END //

CREATE PROCEDURE getUser(IN name VARCHAR(255))
BEGIN
  SELECT username 
    FROM users WHERE username = name;
END //

CREATE PROCEDURE getAllMonsters()
BEGIN
  SELECT id
    FROM monsters;
END //

CREATE PROCEDURE deleteUser(IN name VARCHAR(255))
BEGIN
DELETE FROM users
 WHERE username = name;
END//

CREATE PROCEDURE makeMonster(IN idIN int, nameIN varchar(255), healthIN int, modIN int)
BEGIN
INSERT INTO monsters(id, name, health, initmod) 
    VALUES(idIN, nameIN, healthIN, modIN);
END//

DELIMITER ;