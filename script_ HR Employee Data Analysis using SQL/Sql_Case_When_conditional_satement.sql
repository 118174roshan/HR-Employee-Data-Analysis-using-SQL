use MINI_PROJECT;

select top 12* from employee_data;
/* 1) Salary Categorization

Write a query to display employee_id, name, salary, and categorize:

High Salary → salary > 80,000

Medium Salary → 40,000 to 80,000

Low Salary → salary < 40,000 */
select employee_id, name, salary,
	case
		when salary >80000 then 'High Salary'
		when salary <40000 then 'Medium Salary'
		else 'Low Salary'
	end  as Category
from employee_data;

/*2) Department Bonus Eligibility

If employee is in:

IT or Finance → Eligible for 10% bonus

Sales → Eligible for 15% bonus

Others → No bonus
Add a new column bonus_status. */

select employee_id,name,department,salary,
	case
		when department in ('IT','Finance') then salary * 0.10 
		when department ='sales' then salary * 0.15 
		else 0
	end as Bonus_status
from employee_data 
where department in('IT','Finance','sales');

ALTER TABLE employee_data
ALTER COLUMN salary DECIMAL(10,2);

/*3) City-Based Work Location Zone

Classify city into:

Metro: Bangalore, Mumbai, Delhi

Non-Metro: Others */

select employee_id,name,city,
	case
		when city in('Bangalore', 'Mumbai', 'Delhi') then 'Metro'
	else 'Non Metro'
	end as location_zone
from employee_data;

/*4) Experience Level

Calculate experience_years from join_date, then assign:

Senior → >= 5 years

Mid → 2 to 5 years

Junior → < 2 years*/
select datediff(year,join_date,getdate()) from employee_data;
select name,join_date,datediff(year,join_date,getdate()) as Exp,
	case
		when datediff(year,join_date,getdate())>=5 then 'senior'
		when datediff(year,join_date,getdate())>=2 and datediff(year,join_date,getdate())<=5 then 'Mid'
	else 'Junior'
end as experience_level
from employee_data;

/*5) Salary Review Flag

Flag employees:

"Review Required" → salary < 30000

"Satisfactory" → salary >= 30000 */
select employee_id, name, salary,
	Case
		when salary < 30000 then 'Review Required'
		else 'satisfactory'

	end as salary_review_flag
from employee_data;

/*6) Allowance Calculation

Add a column:

20% allowance for Marketing

15% for HR

10% for all others */

alter table employee_data
add Allowance decimal(10,2);

select top 2 * from employee_data; 

update employee_data
	set Allowance=	case
						when department='Marketing' then salary*0.20
						when department='HR' then salary*0.15
						else salary*0.10
					end


select department,salary,Allowance from employee_data;

/*7) Location Transfer Suggestion

If city is Kolkata or Pune → "Eligible for Transfer"
Else → "Stable Location" */
--
select employee_id, name,city,
	case
		when city in('kolkata','pune') then 'Eligible for Transfer'
		else 'Stable Location'
		
	end as transfer_suggestion
from employee_data;
--
SELECT 
    CASE 
        WHEN city IN ('kolkata', 'pune') THEN 'Eligible for Transfer'
        ELSE 'Stable Location'
    END AS Transfer_Status,
    COUNT(*) AS Employee_Count
FROM employee_data
GROUP BY 
    CASE 
        WHEN city IN ('kolkata', 'pune') THEN 'Eligible for Transfer'
        ELSE 'Stable Location'
    END;

--
select count(*) only_Eligible_Count from employee_data where city in ('kolkata','pune');

/*8) Performance Grade (Random Condition Practice)

Make your own condition and categorize salaries into A, B, C, D.*/

select employee_id, name,salary,
	case
		when salary >90000 then 'A'
		when salary between 70000 and 90000 then 'B'
		when salary between 50000 and 70000 then 'C'
		else 'D'
	end as performance_grade
from employee_data;

/*9) Count Employee Category

Find how many employees fall under categories:

High Salary

Medium Salary

Low Salary */

select 
	case
		when salary >80000 then 'High Salary'
		when salary <40000 then 'Medium Salary'
		else 'Low Salary'
	end as Category,
	count(*)
from employee_data
group by 
	case
		when salary >80000 then 'High Salary'
		when salary <40000 then 'Medium Salary'
		else 'Low Salary'
	end ;

/* 10) Replace Null / Incorrect Values

Convert any missing city or department to "Not Assigned"
(You can practice CASE WHEN column IS NULL) */

SELECT employee_id, name,
       ISNULL(city, 'Not Assigned') AS city,
       ISNULL(department, 'Not Assigned') AS department
FROM employee_data;

select top 5 * from employee_data;