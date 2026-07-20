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
