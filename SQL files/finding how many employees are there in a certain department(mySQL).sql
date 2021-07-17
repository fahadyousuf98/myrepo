select
d.dept_name,
de.dept_no,
count(*)ship
from departments d
inner join dept_emp de
on d.dept_no = de.dept_no
group by d.dept_no
order by de.dept_no 

