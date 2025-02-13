DATE FUNCTIONS:

select sysdate from dual;

select next_day(sysdate,'wed') from dual;

select add_months(sysdate,2) from dual;

select months_between(sysdate,hiredate) from emp;

select least('10-04-2021','21-01-2007') from dual;

select greatest('10-04-2021','21-01-2007') from dual;
