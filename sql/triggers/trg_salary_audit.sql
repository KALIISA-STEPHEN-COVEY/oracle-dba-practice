CREATE OR REPLACE TRIGGER trg_salary_audit
AFTER UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_audit (emp_id, old_salary, new_salary)
    VALUES (:OLD.emp_id, :OLD.salary, :NEW.salary);
END;
/
