create table W_salaries_F
(row_id int identity(1,1),
emp_no int,
dept_no varchar(50),
salary int,
from_date int,
to_date int,
integration_id varchar(50),
ETL_insert_DT datetime,
ETL_update_DT datetime);
