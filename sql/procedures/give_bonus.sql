CREATE OR REPLACE PROCEDURE give_bonus (
    p_emp_id IN NUMBER,
    p_bonus_amount IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = salary + p_bonus_amount
    WHERE emp_id = p_emp_id;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bonus applied to employee ' || p_emp_id);
END;
/
