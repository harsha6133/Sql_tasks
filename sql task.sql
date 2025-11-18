use mydb;
select * from emp;

select * from emp where sal>(select avg(sal) from emp);

select * from emp where sal>(select min(sal) from emp where job="manager");

select e.empno,e.ename from emp e where e.sal >(select avg(sal) from emp where deptid=e.deptid);

select ename from emp ;

select ename,upper(ename) from emp;
select ename,length(ename) from emp;
select ename,concat(ename," ",sal) from emp;
select ename,substr(ename,1,3) as shortname from emp;
select ename,round(sal*1.10,2) from emp;
select ename,ceil(sal) from emp;
select ename,truncate(sal,1) from emp;
select ename,mod(sal,3) from emp;
select ename,month(hiredate) from emp;
select ename,monthname(hiredate) from emp;
select ename,job from emp;
select * from emp where deptid=20;
select ename,sal*(170/100)as inc_sal from emp;
select ename,if((sal>2000&&sal<4000),"true","false") from emp;
select ename from emp where job in ("Manager","analyst"); 
select ename,current_timestamp() from emp;
select ename,if(sal>2000.00,"true","false") as sal from emp;
select ename,sal from emp where sal not between 2000 and 4000;
select ename from emp where ename like "s%";
select ename from emp where mgr is null;
select ename,(sal+comm) as Total_Salary from emp;
select deptid,max(sal) from emp group by deptid;
select ename,sal from emp order by sal desc;
select ename,sal from emp where sal>(select avg(sal) from emp);
select e.ename,e.sal from emp e where e.sal=(select max(sal) from emp where deptid=e.deptid);
select ename,sal from emp order by sal desc limit 1 offset 1 ;
select * from department;
select ename,deptname from emp e join department d on e.deptid=d.deptid;
select * from emp e left join department d on e.deptid=d.deptid;
select * from emp e right join department d on e.deptid=d.deptid;
select e.empno,e.ename,d.deptid,d.deptname from emp e left join department d on e.deptid=d.deptid
union
select e.empno,e.ename,d.deptid,d.deptname from emp e right join department d on e.deptid=d.deptid;
select ename,deptname from emp natural join department;
select e.empno,e.ename,d.deptid,d.deptname from emp e cross join department d;
select ename from emp where sal>(select sal from emp where ename="scott");
select deptid from emp group by deptid having max(sal)>3000;
select ename from emp where job <> "clerk" and sal>2000;
select ename from emp where ename not like '%r';
select ename,deptid from emp where deptid in (10,20);
select deptid,avg(sal) from emp group by deptid having avg(sal)>2000;
select deptid,count(*) from emp group by deptid having count(*)>2;
select job,max(sal) from emp group by job having max(sal)>2000;
select deptid,sum(sal) from emp group by deptid having sum(sal) between 5000 and 10000;
select deptid,sum(sal) from emp group by deptid having sum(sal)>7000;
select deptid,sum(sal) from emp group by deptid;