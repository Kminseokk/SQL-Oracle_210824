--전체 사원 중 ALLEN과 같은 직책인 사원들의 사원정보, 부서정보를 출력해보세요

SELECT JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
from emp E, dept D
where E.DEPTNO = D.DEPTNO
    AND JOB = ( SELECT JOB
                from EMP
                WHERE ENAME = 'ALLEN');
