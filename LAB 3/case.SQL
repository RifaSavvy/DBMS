CASE manipulative Functions (LOWER,UPPER,INITCAP)
select LOWER('ASIET IS FOR TECH GEEKS ONLY') from dual;
select UPPER('asiet is only for geeks')from dual;
select INITCAP('Ai is a subbranch of cse')from dual;

CHARACTER MANIPULATIVE FUNCTIONS
(Concat,length,substr,instr,lpad,rpad,trim,replace);

select CONCAT('CSE','AI')from dual;
select CONCAT(NULL,'CSE')from dual;

SELECT LENGTH('Learning is always fun') from dual;
SELECT LENGTH('    Database')from dual;

select SUBSTR('Database Management System',9)from dual;
select SUBSTR('Database Management System',9,7)from dual;

select INSTR('Google apps are the great applications','app')from dual;
select INSTR('Google apps are the great applications','app',1,2)from dual;

select LPAD('100',5,'*')from dual;
select RPAD('100',5,'#')from dual;
select LPAD('hello',21,'asiet')from dual;
select RPAD('earn',19,'respect')from dual;

SELECT TRIM('A' from 'ANDROID')from dual;
SELECT TRIM('           ANDROID')from dual;

SELECT REPLACE('Data Management','Data','Database') from dual;
