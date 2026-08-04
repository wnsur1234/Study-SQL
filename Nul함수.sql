select 
    empno, ename, ename,sal,comm,sal+comm,
    nvl(comm,0),  --comm이 null이면 0?
    sal+nvl(comm,0)
    from emp;
-- 그냥 sal+comm일땐 null이 있으면 null로 나옴
-- 근데 comm이 nvl로 0처리를 해서 값이 계산이 됨

select empno, ename, comm,
nvl2(comm,'0','X'), -- null이 아니면 첫번째 인자, null 이면 두번째 인자
nvl2(comm, sal*12+comm, sal*12) as annsal
from emp;
