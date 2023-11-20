SELECT * FROM company.pets;


CREATE TABLE employee_audit(
OwnerID INT ,
Name VARCHAR(20) NOT NULL,
kind VARCHAR(20),
changedate DATETIME DEFAULT NULL,
action VARCHAR(50) DEFAULT NULL );

drop table employee_audit;

drop trigger pet_update;

CREATE TRIGGER pet_update
AFTER UPDATE ON pets FOR EACH ROW
INSERT INTO employee_audit
SET action = 'ola update',
OwnerID = OLD.OwnerID,
Name = OLD.Name,
kind = OLD.kind,
changedate = NOW();

SELECT * FROM employee_audit;

SELECT * FROM PETS;

UPDATE pets
SET Kind = 'Cat', Name = 'oal'
WHERE OwnerID = 5168;

describe pets;