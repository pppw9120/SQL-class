create database aaab;
use aaab;

create table customer(
customer_id int not null primary key,
first_name nvarchar(25),
last_name nvarchar(25),
phone_no nvarchar(11),
email nvarchar(50),
address nvarchar(50)
);

insert into customer values(1,'James','Waler','+44568952','james@gmail.com','second street round block, london');
insert into customer values(2,'Stuart','Steller','+44857523','stuart@gmail.com','clock tower street, london');

create table product(
product_id int not null primary key,
product_name nvarchar(30),
brand nvarchar(30),
quantity nvarchar(11),
price int
);

insert into product values(55,'plug','Honda','5 pieces',10);
insert into product values(56,'brakes shoe','Suzuki','9 pieces',25);


create table orderr(
order_id int not null primary key,
product_id int,
quantity int,
price int,
subtotal int,
customer_id int
FOREIGN KEY (product_id) REFERENCES product(product_id),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

insert into orderr values(24,55,1,8,9,1);
insert into orderr values(25,56,2,15,18,2);


create table useraccount(
UserID int not null primary key,
UserName nvarchar(11),
passwordd nvarchar(15)
);


insert into useraccount values(80,'Luke','qwerty');
insert into useraccount values(81,'Ronchi','iostream')

create table transactionn(
transaction_no int not null primary key,
UserID int,
customer_id int,
Tdate date,
Quantity nvarchar(11),
TotalAmount int
FOREIGN KEY (UserID) REFERENCES useraccount(UserID)
);

insert into transactionn values(101,80,25,'1 May 2022','2 pieces',8);
insert into transactionn values(102,81,24,'1 May 2022','5 pieces',15);


create table userdetail(
UserID int,
firstname nvarchar(25),
lastname nvarchar(25),
age int,
gender nvarchar(10),
contact nvarchar(11),
email nvarchar(50),
FOREIGN KEY (UserID) REFERENCES useraccount(UserID)
);

insert into userdetail values(80,'Luke','Green',30,'Male','+447812356','luke@gmail.com');
insert into userdetail values(80,'Rochi','Blare',25,'Male','+442165325','ronchi@gmail.com');