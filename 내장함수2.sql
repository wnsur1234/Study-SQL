-- concat (두 문자열을 합치는 함수)
select concat(empno,ename),
concat(empno,concat(':',ename))
from emp
where ename = upper('scott'); -- 'upper(scott)'은 안됨; 어찌보면 당연한거
