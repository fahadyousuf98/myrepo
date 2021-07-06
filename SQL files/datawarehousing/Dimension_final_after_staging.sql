create table W_dept_emp_D(
row_id int identity(1,1),
emp_no int,
dept_no varchar(20),
from_date date,
to_date date,
integration_id varchar(50),
ETL_insert_DT datetime,
ETL_update_DT datetime);

create table W_dept_manager_D(
row_id int identity(1,1),
emp_no int,
dept_no varchar(20),
from_date date,
to_date date,
integration_id varchar(50),
ETL_insert_DT datetime,
ETL_update_DT datetime);

create table W_Employees_D(
row_id int identity(1,1),
emp_no int,
birt_date date,
firstname varchar(20),
last_name varchar(20),
gender varchar(20),
hire_date date,
integration_id varchar(50),
ETL_insert_DT datetime,
ETL_update_DT datetime);

create table W_titles_D(
row_id int identity(1,1),
emp_no int,
title varchar(20),
from_date date,
to_date date,
integration_id varchar(50),
ETL_insert_DT datetime,
ETL_update_DT datetime)

create table W_departments_D(
row_id int identity(1,1),
dept_no varchar(20),
dept_name varchar(20),
integration_id varchar(50),
ETL_insert_DT datetime,
ETL_update_DT datetime);

