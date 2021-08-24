--10번 부서에 근무하는 사원 중 30번 부서에는 존재하지 않는 직책을 가진 사원들의 사원정보, 부서정보를 출력해보세요

SELECT JOB, E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC
from emp E, dept D
where E.DEPTNO = D.DEPTNO
    AND E.DEPTNO = 10
    AND JOB NOT IN (SELECT DISTINCT JOB
                FROM EMP
                WHERE DEPTNO = 30);
