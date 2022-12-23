-- inner join
select employees.first_name,employees.department_id,departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id;

--left join
select employees.first_name,employees.department_id,departments.department_name
from employees
left join departments
on employees.department_id = departments.department_id;

--equijoin
select employees.first_name,employees.department_id,departments.department_name
from employees,departments
where employees.department_id = departments.department_id;

--selfjoin
select a.first_name, b.employee_id,a.salary
from employees a, employees b
where a.salary < b.salary;

--crossjoin
select *
from employees
cross join departments;

--antijoin
SELECT   departments.department_id, departments.department_name  
        FROM     departments  
        WHERE    NOT EXISTS  
                 (  
                 SELECT * 
                 FROM   employees  
                 WHERE employees.department_id = departments.department_id  
                 )  
        ORDER BY departments.department_id;
        
--semijoin
SELECT   departments.department_id, departments.department_name  
        FROM     departments  
        WHERE    EXISTS  
                 (  
                 SELECT *
                 FROM   employees  
                 WHERE employees.department_id = departments.department_id  
                 )  
        ORDER BY departments.department_id;
