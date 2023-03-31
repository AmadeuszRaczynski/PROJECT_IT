
/*Mechanism of automatically marking orders as inactive in the absence of accepted payment within 
8 days of the order.*/

-- PACKAGE 
CREATE OR REPLACE PACKAGE validation_pkg
IS
PROCEDURE p_validator;
END validation_pkg;
/

-- PACKAGE BODY

CREATE OR REPLACE PACKAGE BODY validation_pkg
IS

    PROCEDURE p_validator
    IS
    v_order_days_limit INTEGER := 8;
    BEGIN
        UPDATE subscriptions sp
            SET status = 'INACTIVE'
        WHERE sysdate - v_order_days_limit  > order_date
        AND status = 'NEW'
        AND NOT EXISTS (
                        SELECT 1
                          FROM order_payments op
                         WHERE op.subscription_id = sp.subscription_id
                           AND op.status = 'APPROVED'
                           AND op.payment_date BETWEEN sp.order_date AND sp.order_date+v_order_days_limit
                            ); 
    END;
BEGIN
NULL;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE(sqlerrm);
END validation_pkg;
/




--JOB program
BEGIN
DBMS_SCHEDULER.create_program (
program_name     => 'automat_validate_orders' ,
program_type     => 'PLSQL_BLOCK',
program_action   => 'validation_pkg.p_validator;',
enabled          => TRUE,
comments         => 'Order validator'
);
END;
/

-- JOB schedule
BEGIN
DBMS_SCHEDULER.create_schedule (
schedule_name    => 'Weekly_harmonogram',
start_date       => SYSTIMESTAMP,
repeat_interval  => 'FREQ=DAILY; BYDAY=THU; BYHOUR = 17; BYMINUTE=24;',
end_date         => NULL,
comments         => 'Repeated every week on Monday'
);
END;
/


-- JOB 
BEGIN
DBMS_SCHEDULER.create_job (
job_name        =>  'orders_validator',
program_name    =>  'automat_validate_orders',
schedule_name   =>  'Weekly_harmonogram',
enabled         =>  TRUE,
comments        =>  'TEST JOB'
);
END;
/



BEGIN
DBMS_SCHEDULER.create_job (
job_name        =>  'orders_validator',
program_name    =>  'automat_validate_orders',
schedule_name   =>  'Weekly_harmonogram',
enabled         =>  TRUE,
comments        =>  'TEST JOB'
);
END;
/

