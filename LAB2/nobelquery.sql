create table nobel_win(year number(4),subject char(3),winner char(10), country char(3),cat char(3));

insert into nobel_win values(&year,'&subject','&winner','&country','&cat');

select winner from nobel_win where year=1999;

select winner from nobel_win where subject='physics' AND year>=1950;

select year,subject,winner,country from nobel_win where year>=1965 AND year<=1975 and subject='chemistry';

select year,subject,winner from nobel_win where winner like 'mark%';

select * from nobel_win where ( subject='physics' and year=1987) union (select * from nobel_win where (subject='ai' and year=1999));

select * from nobel_win where year >=1970 and subject not in('chemistry','math');

select * from nobel_win where year >=1970 and subject not like 'p%' order by year;

