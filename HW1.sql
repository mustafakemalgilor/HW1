

-- Change manager id stored procedure
CREATE OR REPLACE PROCEDURE change_manager_id(did IN number, mid IN number, nmid IN number) AS
BEGIN

UPDATE employees SET manager_id = nmid WHERE department_id = did and manager_id = mid;

END change_manager_id;

-- Retrieve manager of department function


CREATE OR REPLACE FUNCTION get_manager_name(did IN number) RETURN varchar2 IS name_surname varchar2(100);
BEGIN
SELECT CONCAT(first_name,last_name) INTO name_surname FROM employees where department_id = did and manager_id is null;
RETURN name_surname;

END get_manager_name;

