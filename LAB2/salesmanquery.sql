create table salesman1(salesman_id number(5) primary key,name char(15),city char(10), commission decimal(5,2));

create table customer1(cust_id number(5), cust_name char(15),city char(5),grade char(2),salesman_id number(15), foreign key(salesman_id) references salesman1(salesman_id));

create table orders1(ord_no number(5), purchase_amt number(4),ord_date date, cust_id number(5),salesman_id number(5), foreign key(salesman_id) references salesman1(salesman_id));

insert into salesman1 values(&salesman_id,'&name','&city',&commission);

insert into customer1 values(&cust_id,'&cust_name','&city','&grade',&salesman_id);

insert into orders1 values(&ord_no,&purchase_amt,'&ord_date',&cust_id,&salesman_id);

select ord_no,salesman_id,ord_date,purchase_amt from orders1;

select * from customer1 where grade='a';

select name from salesman1 where city ='Vegas';

select distinct salesman_id from orders1;

select ord_no,ord_date,purchase_amt from orders1 where salesman_id =37201;
