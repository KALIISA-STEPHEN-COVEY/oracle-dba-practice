-- Procedure: give_raise
CREATE OR REPLACE PROCEDURE give_raise (
    p_emp_id IN NUMBER,
    p_amount IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = salary + p_amount
    WHERE emp_id = p_emp_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Raise applied to employee ' || p_emp_id);
END;
/

-- Function: get_annual_salary
CREATE OR REPLACE FUNCTION get_annual_salary (
    p_emp_id IN NUMBER
) RETURN NUMBER
AS
    v_monthly_salary NUMBER;
BEGIN
    SELECT salary INTO v_monthly_salary
    FROM employees
    WHERE emp_id = p_emp_id;
    RETURN v_monthly_salary * 12;
END;
/

-- Audit table
CREATE TABLE salary_audit (
    audit_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    emp_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    changed_on DATE DEFAULT SYSDATE
);

-- Trigger: audit salary changes
CREATE OR REPLACE TRIGGER trg_salary_audit
AFTER UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_audit (emp_id, old_salary, new_salary)
    VALUES (:OLD.emp_id, :OLD.salary, :NEW.salary);
END;
/
