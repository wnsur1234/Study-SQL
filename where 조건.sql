 select *
from emp
where ename >= 'F';

-- where 에서 = 같은게 true
-- <>, !=, ^= 다른게 True

select * 
from emp
where ename not like '%AM%';


select empno,ename, sal, deptno
from emp
where deptno = 10
union
select empno, ename, sal, deptno
from emp
where deptno = 20;

select *
from emp
where ename like '%S';

select empno, ename, job, sal ,deptno
from emp
where deptno = 30 and job = 'SALESMAN';

select empno, ename, job, sal ,deptno
from emp
-- where (deptno = 20 or deptno = 30) and sal > 2000
where deptno in (20,30) and sal>2000;


select *
from emp
where sal <2000 or sal >3000;

select ename ,empno,sal,deptno
from emp
where (sal not between 1000 and 2000) 
and ename like '%E%'
and deptno=30;


select *
from emp
where comm is null and mgr is not null and
job in ('MANAGER', 'CLERK') and
ename not like '_L%'




