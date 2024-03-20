Show User; 


-- Select Query 

select * from employees;

-- Using Concatenation and Sorting Using Numeric Value
-- Also Restriction like Fetch And Offset

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
--where salary >10000
order by 3
offset  2 rows
fetch first 2 rows with ties;

-- Part two


select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
--where salary >10000
order by salary;


-- Sorting Using Aliases

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
--where salary >10000
order by Fullname desc;

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees;


-- Uisng Distinct Keyword

select distinct salary,first_name from employees;


-- Using Between 

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where salary between 2100 and 10000
order by salary;


-- using In()

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where salary in(2200,10000, 14000)
order by salary;



-- Nulls First or Last 

select first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate , commission_pct Comm
from employees
order by comm desc nulls last;


-- Using Not Equal Combarison Operations like <> or != 

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where employee_id <> 101;


-- Using Like Character And Wild Cards for Strings
-- Wild Cards Are % and _ (UnderScore)
-- Starts With A capital

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like 'A%';  -- Case Sensitive

-- Starts with C capital

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like 'C%';


-- Ends with d Lowerrcase

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like '%d'; -- Lower case

-- Contains m letter

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like '%m%'; -- In the Middle


-- Starts With S and Ends n

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like 'S%n'; -- S is Capital but the i is Lowercase


-- Using UnderScore for Jumping

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like '_d%'; -- 2nd Letter is d


-- Third Lettter 

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like '__n%';  -- 3rd Letter is n


-- Three letters Only 

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like '___'; -- First Name is Onky three Letters


-- Second last Letter 

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where first_name like '%a_'; -- 2nd last letter is a


-- Using Escape Identifier / or \

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where job_id like 'I%'; -- Job Id that starts with I capital 


-- Using forward slash to escape 

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,
salary,hire_date JoinDate, job_id as JobType
from employees
where job_id like 'IT/_%' escape '/'; -- Job id is starts with IT_  Use / to escape

-- Using Backward Slash to Escape 

select employee_id as Id,first_name||' '||last_name||'  ' as Fullname,email ,salary,hire_date JoinDate 
from employees
where job_id like 'IT\_%' escape '\'; -- Job id Starts with IT_ use \ to escape

