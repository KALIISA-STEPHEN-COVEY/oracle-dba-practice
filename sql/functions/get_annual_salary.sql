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
