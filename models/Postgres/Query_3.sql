SELECT d.department_id, d.department_name, 
ROUND(Avg(e.salary), 2) as Avg_Salary,
ROUND(Avg(e.salary)-Avg(Avg(e.salary)) OVER (), 2) As diff_from_overall_avg
FROM snowflake__myschema.departments as d
INNER JOIN
snowflake__myschema.employees as e ON d.department_id = e.department_id
Group by d.department_id