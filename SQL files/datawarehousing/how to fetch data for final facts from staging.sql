--to write when inserting in the FS table


select DED.emp_no,
DMD.dept_no,
DED.salary,
DED.from_date,
DED.to_date,
concat(DMD.emp_no,'~',DED.from_date,'~',DED.to_date) integration_id,
sysdate() etl_insert_dt,
sysdate() etl_update_dt
from salaries DED
inner JOIN dept_emp      DMD  on     DMD.emp_no = DED.emp_no
and DED.to_date between DMD.from_date and DMD.to_date
where concat(ded.emp_no,'~',ded.from_date,'~',ded.to_date) not in
(select 
td.a from (select
concat(DMD.emp_no,'~',DED.from_date,'~',DED.to_date) a,
count(*) finding_duplicates
from salaries DED
inner JOIN dept_emp  DMD  on     DMD.emp_no = DED.emp_no
inner join departments d  on     d.dept_no   = dmd.dept_no
and ded.to_date between dmd.from_date and dmd.to_date
group by concat(DMD.emp_no,'~',DED.from_date,'~',DED.to_date)
having count(*) > 1 )td
)

///////////////////////////////////////////

-- to write when inserting in the final fact table



select 
isnull(ED.row_id,0) EMPLOYEE_WID,
isnull(DD.row_id,0) DEPARTMENT_WID,
isnull(TD.row_id,0) TITLE_WID,
isnull(DED.row_id,0) DEPT_EMP_WID,
isnull(DMD.row_id,0) DEPT_MANAGER_WID,
isnull(FS.salary,0) salary,
isnull(FD.DateKey,0) FROM_DATE_WID,
isnull(TTD.DateKey,0) TO_DATE_WID, 
isnull(FS.integration_id,'uns') integration_id,
getdate() ETL_insert_DT,
getdate() ETL_update_DT
from W_salaries_FS                    FS
INNER JOIN W_Employees_D              ED   on    ED.emp_no  =  FS.emp_no
INNER JOIN W_departments_D            DD   on    DD.dept_no =  FS.dept_no
INNER JOIN W_titles_D                 TD   on    TD.emp_no  =  FS.emp_no
INNER JOIN W_dept_emp_D               DED  on    DED.emp_no =  FS.emp_no
left outer JOIN W_dept_manager_D      DMD  on    DMD.dept_no = DED.dept_no and DMD.emp_no = DED.emp_no
and DED.from_date = DMD.from_date 
and DED.to_date between DMD.from_date and DMD.to_date
inner join Dim_Date                 FD   on    FD.Date    =  FS.from_date 
left outer join Dim_Date            TTD  on    isnull(TTD.Date, '1901-01-01')   =  isnull(FS.TO_date, '1901-01-01')
where year(FS.from_date) = '2000'
;
