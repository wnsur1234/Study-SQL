-- DECODE 함수
-- 뭔지는 알지만 매번 헷갈리는거
-- 잘 기억 합시다!
-- 얘는 Switch case 문과 같은 역할
select empno,ename, job, sal,
decode(job,                 -- 기준 컬럼이나 연산 ex) JOB컬럼 or SCORE + 10
    'MANAGER',sal*1.1,      -- 그 값 컬럼의 값 or 연산 값 ex) MANAGER or 110
    'SALESMAN',sal*1.05,
    'ANALYST',sal,
    sal*1.03) as upsal      -- defualt 값
    from emp;
    
    
-- CASE 함수
-- 얘는 if ... elseif ... 와 같은 역할
select empno,ename,job,sal,
case job
when 'MANAGER' THEN sal*1.1
when 'SALESMAN' then sal*1.5
when 'analyst' then sal
else sal*1.03
end as upsal
from emp;

-- DECODE 와 CASE 함수의 차이
-- 둘은 비슷해 보이지만 가장 큰 차이가 존재하는데
-- 1. DECODE는 = 비교조건 밖에 안됨 
-- 2. CASE는 동등 비교 + 범위/조건 비교 가능 (>, <, >=, LIKE, IS NULL 등) 가능