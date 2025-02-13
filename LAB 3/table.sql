create table sailors(sid int primary key,sname varchar(10),rating int,age int check(age>16 and age<100));
insert into sailors values(1,'Ria',9,17);
insert into sailors values(2,'Risha',7,21);
insert into sailors values(3,'Amy',2,11);
insert into sailors values(4,'Elsa',6,31);


create table boat(bid int primary key,bname char(10),color char(10));
insert into boat values (111,'Titanic','red');
insert into boat values (121,'Sanco','yellow');
insert into boat values (131,'Corpus','black');
insert into boat values (141,'Marco','red');


create table reserves(sid int,bid int,day date, foreign key(sid) references sailors(sid),foreign key(bid) references boat(bid));
insert into reserves values(1,111,'01-02-2025');
insert into reserves values(2,121,'21-12-2009');
insert into reserves values(3,131,'27-08-2013');
select * from insert into reserves values(4,141,'01-10-2025');



1.Finding the names of the sialors who have reserved both a red or yellow boat.

select s.sname from sailors s,boat b, reserves r where s.sid=r.sid and b.bid= r.bid and (b.color ='red' or b.color= 'yellow');

2.Find sailors who have a rating 10 or have reserved boat 111.

select s.sid from sailors s where s.rating =10 union select r.sid from reserves r where r.bid = 111;

3.find all SIDs of sailors who have reserved red boats not yellow boats(hint-minus)

select s.sid from sailors s, boat b, reserves r where s.sid = r.sid and r.bid =b.bid and b.color ='red' minus select s2.sid from sailors s2, boat b2,reserves r2 where s2.sid = r2.sid and r2.bid = b2.bid and b2.color ='yellow';

4.Find the names of the sailors who have reserved both red and yellow boat (hint-No Brainer)


select s.sname from sailors s, boat b, reserves r where s.sid = r.sid and r.bid =b.bid and b.color ='red' intersect select s2.sname from sailors s2, boat b2,reserves r2 where s2.sid = r2.sid and r2.bid = b2.bid and b2.color ='yellow';


5.Find the names of sailors who have reserved a boat of color red and list in the order of age.

select s.sname from sailors s,boat b,reserves r where s.sid=r.sid and b.bid=r.bid and b.color = 'red' order by age;

6. Find the names of sailors who have reserved boat 121.(Hint- nested query, use-In)

select s.sname from sailors s where s.sid in(select r.sid from reserves r where r.bid=121);
select s.sname from sailors s where s.sid exists(select r.sid from reserves r where r.bid=121);

7.Find the name and the age of the youngest sailor.

 select sname, age from sailors where age in(select min(age) from sailors);

