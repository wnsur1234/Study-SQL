-- concat (두 문자열을 합치는 함수)
select concat(empno,ename),
concat(empno,concat(':',ename))
from emp
where ename = upper('scott'); -- 'upper(scott)'은 안됨; 어찌보면 당연한거


select empno || ename,
empno || ' : ' || ename
from emp
where ename = 'SCOTT';

-- Trim,LTRIM,RTRIM | 특정문자를 지울 때 사용
-- 삭제할 문자는 필수 X, 없으면 공백을 지움
-- 공백을 지우다 문자를 만나면 종료
select '[' || trim(' _ _Oracle_ _ ')|| ']' as trim, -- boath와 같은 역할
       '[' || trim(leading from ' _ _Oracle_ _ ')|| ']' as trim_leading, -- 왼쪽
       '[' || trim(trailing from ' _ _Oracle_ _ ')|| ']' as trim_trailing, -- 오른쪾
       '[' || trim(both from ' _ _Oracle_ _ ')|| ']' as trim_boath -- 앞뒤
from dual;

-- trim은 지정 문자를 찾아가는게 아님
-- both나 Ltrim이던 Rtrim이던 해당 방향에 맞게 맨처음 문자 부터 판단 하고
-- 그게 지정한 문자와 같지 않다면 작업 바로 종료
-- 그렇기에 이건 앞부디로 다 공백이있기에 _이게 안지워짐
select '[' || trim('_' from ' _ _ Oracle _ _ ')|| ']' as trim, -- boath와 같은 역할
       '[' || trim(leading '_' from ' _ _Oracle_ _ ')|| ']' as trim_leading, -- 왼쪽
       '[' || trim(trailing '_' from ' _ _Oracle_ _ ')|| ']' as trim_trailing, -- 오른쪾
       '[' || trim(both '_' from ' _ _Oracle_ _ ')|| ']' as trim_boath -- 앞뒤
from dual;

-- 이렇게
select '[' || trim('_' from '_ _ Oracle _ _')|| ']' as trim, -- boath와 같은 역할
       '[' || trim(leading '_' from '_ _Oracle_ _ ')|| ']' as trim_leading, -- 왼쪽
       '[' || trim(trailing '_' from '_ _Oracle_ _')|| ']' as trim_trailing, -- 오른쪾
       '[' || trim(both '_' from '__Oracle__')|| ']' as trim_boath -- 앞뒤
from dual;


-- 최종 LTRIM, RTRIM
-- LTRIM,RTRIM 에서는 문자를 지정하면 ex) '_<'이라면 둘중 일치하는거 저 _<가 한문장으로 일치하는게 아님ㄴ
select '[' || trim (' _ Oracle _ ')|| ']' as trim, -- boath와 같은 역할
       '[' || ltrim (' _ _Oracle_ _ ')|| ']' as LTRIM,
       '[' || ltrim('<_Oracle_>','_<') || ']' as LTRIM_2, 
       '[' || rtrim(' _Oracle_ ')|| ']' as RTRIM,
       '[' || rtrim('<_Oracle_>', '>_')|| ']' as RTRIM_2
from dual;