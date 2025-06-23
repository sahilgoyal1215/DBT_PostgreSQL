SELECT d.department_id, d.department_name, Max(e.salary) as Max_Salary, Min(e.salary) as Min_Salary FROM snowflake__myschema.departments as d
INNER JOIN
snowflake__myschema.employees as e ON d.department_id = e.department_id
Group by d.department_id