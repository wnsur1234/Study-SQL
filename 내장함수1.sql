select ename, upper(ename)
,lower(ename),initcap(ename)
from emp;

select * 
from emp
where 1=1
 AND upper(ename) = upper('scott');
-- 만약 like '%scott%' 이였다면 못찾았다.
-- AND ename like'%scott%' or ename like '%SCOTT%'; => 이렇게 찾았어야함

select *
from emp 
where upper(ename) like upper('%scott%');
-- 오 이렇게도 되네 lkie에 upper lower initcap을 넣을수있다!

select ename, length(ename)
from emp;

select ename, length(ename)
from emp
where length(ename) > 4;

select length('한글'), lengthb('한글'), length('duddj'), lengthb('duddj')
from DUAL;


select job, substr(job,1,2), substr(job,3,2) , substr(job,5),substr(job,-1),substr(job,-4,-1)
from emp;
    

