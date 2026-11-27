create DATABASE lukora_company;
use lukora_company;
create table employee (
employee_id int primary key,
first_name varchar(50),
department varchar(50),
salary decimal(20,2),
city varchar(80)
);

insert into employee values
(101,'rahul','sales',30000,'delhi'),
(102, 'Priya', 'HR', 45000, 'Mumbai'),
(103, 'Aman', 'IT', 55000, 'Delhi'),
(104, 'Neha', 'Sales', 40000, 'Jaipur'),
(105, 'Karan', 'IT', 60000, 'Delhi'),
(106, 'Riya', 'HR', 35000, 'Mumbai'),
(107, 'Arjun', 'Marketing', 48000, 'Delhi'),
(108, 'Simran', 'Sales', 52000, 'Jaipur'),
(109, 'Rahul', 'IT', 65000, 'Delhi'),
(110, 'Anjali', 'HR', 42000, 'Mumbai'),
(111, 'Vikram', 'Finance', 58000, 'Pune'),
(112, 'Pooja', 'Sales', 39000, 'Jaipur'),
(113, 'Rohit', 'Marketing', 51000, 'Delhi'),
(114, 'Sneha', 'IT', 72000, 'Bangalore'),
(115, 'Amit', 'Finance', 62000, 'Mumbai'),
(116, 'Kavita', 'HR', 38000, 'Pune'),
(117, 'Sahil', 'Sales', 45000, 'Delhi'),
(118, 'Meera', 'Marketing', 55000, 'Jaipur'),
(119, 'Deepak', 'IT', 68000, 'Mumbai'),
(120, 'Nisha', 'HR', 47000, 'Delhi'),
(121, 'Varun', 'Finance', 75000, 'Bangalore'),
(122, 'Isha', 'Sales', 43000, 'Pune'),
(123, 'Manish', 'Marketing', 49000, 'Mumbai'),
(124, 'Kriti', 'IT', 80000, 'Delhi'),
(125, 'Rakesh', 'Finance', 53000, 'Jaipur'),
(126, 'Divya', 'HR', 41000, 'Bangalore'),
(127, 'Mohit', 'Sales', 57000, 'Mumbai'),
(128, 'Tanya', 'Marketing', 60000, 'Pune'),
(129, 'Abhishek', 'IT', 75000, 'Delhi'),
(130, 'Ritu', 'HR', 36000, 'Jaipur'),
(131, 'Gaurav', 'Finance', 67000, 'Mumbai'),
(132, 'Swati', 'Sales', 48000, 'Bangalore'),
(133, 'Nitin', 'Marketing', 52000, 'Delhi'),
(134, 'Preeti', 'IT', 85000, 'Pune'),
(135, 'Ajay', 'Finance', 59000, 'Jaipur'),
(136, 'Komal', 'HR', 44000, 'Mumbai'),
(137, 'Yash', 'Sales', 62000, 'Delhi'),
(138, 'Shreya', 'Marketing', 58000, 'Bangalore'),
(139, 'Harsh', 'IT', 92000, 'Mumbai'),
(140, 'Payal', 'HR', 39000, 'Pune'),
(141, 'Suresh', 'Finance', 71000, 'Delhi'),
(142, 'Muskan', 'Sales', 46000, 'Jaipur'),
(143, 'Tarun', 'Marketing', 63000, 'Mumbai'),
(144, 'Aakash', 'IT', 78000, 'Bangalore'),
(145, 'Radhika', 'HR', 50000, 'Delhi'),
(146, 'Kunal', 'Finance', 64000, 'Pune'),
(147, 'Bhavna', 'Sales', 41000, 'Mumbai'),
(148, 'Rajat', 'Marketing', 56000, 'Jaipur'),
(149, 'Sakshi', 'IT', 88000, 'Delhi'),
(150, 'Pankaj', 'Finance', 49000, 'Bangalore'),
(151, 'Tanvi', 'HR', 46000, 'Mumbai'),
(152, 'Akash', 'Sales', 54000, 'Pune'),
(153, 'Neeraj', 'Marketing', 61000, 'Delhi'),
(154, 'Mansi', 'IT', 95000, 'Bangalore'),
(155, 'Varsha', 'HR', 43000, 'Jaipur'),
(156, 'Ankit', 'Finance', 76000, 'Mumbai'),
(157, 'Kirti', 'Sales', 50000, 'Delhi'),
(158, 'Sameer', 'Marketing', 47000, 'Pune'),
(159, 'Naveen', 'IT', 69000, 'Jaipur'),
(160, 'Aarti', 'Finance', 58000, 'Delhi'),
(161, 'Dev', 'Sales', 65000, 'Bangalore');

select * from employee;

select distinct department from employee;

select employee_id,first_name,salary from employee
where salary between 50000 and 100000;

alter table employee 
add column  join_date date;

update employee
set join_date = 
CASE
    WHEN employee_id BETWEEN 101 AND 110 THEN '2020-03-15'
    WHEN employee_id BETWEEN 111 AND 120 THEN '2021-06-20'
    WHEN employee_id BETWEEN 121 AND 130 THEN '2022-08-10'
    WHEN employee_id BETWEEN 131 AND 140 THEN '2023-01-25'
    WHEN employee_id BETWEEN 141 AND 150 THEN '2024-04-12'
    WHEN employee_id BETWEEN 151 AND 161 THEN '2025-09-18'
END
WHERE employee_id BETWEEN 101 AND 161;

select employee_id,first_name,join_date from employee
where year(join_date) = 2020;   

select employee_id,first_name from employee
where first_name like  'A%';

select first_name from employee
where first_name like '%A';

USE lukora_company;

ALTER TABLE employee
ADD COLUMN last_name VARCHAR(50),
ADD COLUMN department_id INT,
ADD COLUMN manager_id INT NULL,
ADD COLUMN birth_date DATE,
ADD COLUMN hire_date DATE,
ADD COLUMN email VARCHAR(150),
ADD COLUMN bonus DECIMAL(10,2) NULL,
ADD COLUMN job_title VARCHAR(80),
ADD COLUMN job_role VARCHAR(80);

UPDATE employee
SET
    last_name = CASE MOD(employee_id, 8)
        WHEN 0 THEN 'Sharma'
        WHEN 1 THEN 'Kumar'
        WHEN 2 THEN 'Singh'
        WHEN 3 THEN 'Verma'
        WHEN 4 THEN 'Gupta'
        WHEN 5 THEN 'Yadav'
        WHEN 6 THEN 'Mehta'
        ELSE 'Rao'
    END,

    department_id = CASE LOWER(department)
        WHEN 'it' THEN 101
        WHEN 'hr' THEN 102
        WHEN 'sales' THEN 103
        WHEN 'marketing' THEN 104
        WHEN 'finance' THEN 105
    END,

    manager_id = CASE
        WHEN employee_id IN (101,111,121,131,141,151) THEN NULL
        WHEN employee_id BETWEEN 102 AND 110 THEN 101
        WHEN employee_id BETWEEN 112 AND 120 THEN 111
        WHEN employee_id BETWEEN 122 AND 130 THEN 121
        WHEN employee_id BETWEEN 132 AND 140 THEN 131
        WHEN employee_id BETWEEN 142 AND 150 THEN 141
        WHEN employee_id BETWEEN 152 AND 161 THEN 151
    END,

    hire_date = join_date,

    birth_date = DATE_SUB(
        CURDATE(),
        INTERVAL (22 + MOD(employee_id, 20)) YEAR
    ),

    email = CONCAT(LOWER(first_name), employee_id, '@example.com'),

    bonus = CASE
        WHEN MOD(employee_id, 3) = 0 THEN NULL
        WHEN MOD(employee_id, 3) = 1 THEN 5000
        ELSE 8000
    END,

    job_title = CASE LOWER(department)
        WHEN 'it' THEN 'Data Analyst'
        WHEN 'hr' THEN 'HR Executive'
        WHEN 'sales' THEN 'Sales Executive'
        WHEN 'marketing' THEN 'Marketing Associate'
        WHEN 'finance' THEN 'Financial Analyst'
    END,

    job_role = CASE LOWER(department)
        WHEN 'it' THEN 'Technology'
        WHEN 'hr' THEN 'Human Resources'
        WHEN 'sales' THEN 'Sales'
        WHEN 'marketing' THEN 'Marketing'
        WHEN 'finance' THEN 'Finance'
    END
    WHERE employee_id BETWEEN 101 AND 161;
    
    select * from employee;
    select employee_id,first_name,manager_id from employee
    where manager_id is null ;
    
    select department_id , count(*) as total_employee from employee
    group by department_id
    order by total_employee desc
    limit 1;
    
    select department_id , count(*) as total_employee
    from employee
    group by department_id;
    
    select employee_id,first_name , salary from employee
    where salary > 60000;
    
    select employee_id,first_name , salary from employee
    where salary <= 50000;
    
    select employee_id, first_name, salary from employee
    where salary between 50000 and 100000;
    
    select employee_id, first_name, department from employee
    where department in ('it','hr','finance');
    
    select employee_id, first_name, manager_id from employee
    where manager_id = 101;
    
    select employee_id, first_name , department from employee
    where department in ('sales','marketing');
    
    select employee_id,first_name,department,salary from employee
    where salary > 70000 and department in ('it');
    
    select employee_id,first_name,department,salary from employee
    where salary > 60000 and department in ('it','finance');
    
    select employee_id,first_name,department,salary from employee
    where salary > 50000 and department not in ('it');
    
    select employee_id,first_name,department,salary from employee
    where salary > 70000 and department  in ('it' ,'finance');
    
    select employee_id,first_name,department,salary from employee
    where salary > 70000 and (department = 'it' or department = 'finance');
    
    select employee_id,first_name,bonus from employee
    where bonus is not null;
    select employee_id,first_name from employee
    where first_name not like 'a%';
    
    select employee_id,first_name,salary from employee
    where salary not between 40000 and 60000;
