desc dept;

desc salgrade;

select * 
from emp
where rownum =1; -- 행하나만 뽑는거
-- My SQL에서는 Limit 1;


select empno, deptno 
from emp;