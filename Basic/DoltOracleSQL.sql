select job,
-- job의 실제 값의 길이의 -길이 ex) clerk = -5부터 끝까지 -1 까지 출력
substr(job, -length(job)),
-- job의 실제 값의 -길이 ex) clerk => -5으로 부터 2글자
substr(job, -length(job),2), 
-- -3자리부터 -1 까지 출력
substr(job, -3)
from emp;

select instr(upper('hello, oracle!'),upper('l')) instr_1,
instr(upper('hello, oracle!'),upper('l'),5) instr_2,
instr(upper('hello, oracle!'),upper('l'),2,2) instr_3
from dual;

select *
from emp
where instr(ename,upper('s')) > 0;

select *
from emp
where ename like upper('%s%');

-- LPAD / RPAD (패딩) : 특정문자로 채운다
select 'oracle',
lpad('oracle',10,'#') as lpad_1,
rpad('oracle',10,'*') as lpad_2,
lpad('oracle',10) as lpad_3,
rpad('oracle',10) as lpad_4
from dual;



