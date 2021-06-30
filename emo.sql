drop table infor;
drop table dept;
drop table emp;
CREATE TABLE emp (
empno INT PRIMARY KEY,
ename VARCHAR(10),
job VARCHAR(9),
mgr INT NULL,
hiredate DATETIME,
sal NUMERIC(7,2),
comm NUMERIC(7,2) NULL,
deptid INT)
begin
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptid)
values
(1,'JOHNSON','ADMIN',6,'12-17-1990',1800,NULL,4)
,(2,'HARDING','MANAGER',9,'02-02-1998',52000,300,3)
,(3,'TAFT','SALES I',2,'01-02-1996',25000,500,3)
,(4,'HOOVER','SALES I',2,'04-02-1990',27000,NULL,3)
end
CREATE TABLE dept (
deptno INT NOT NULL PRIMARY KEY,
dname VARCHAR(14),
loc VARCHAR(13))
begin
insert into dept values (1,'ACCOUNTING','ST LOUIS')
insert into dept values (2,'RESEARCH','NEW YORK')
insert into dept values (3,'SALES','ATLANTA')
insert into dept values (4, 'OPERATIONS','SEATTLE')
end

select * from emp;
select * from dept;


select distinct job, COUNT(*) as no_of_employees into infor from emp group by job;
select * from infor;
