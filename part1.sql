CREATE DATABASE ONLINESHOP;
CREATE TABLE ORDERS(orderid int not null auto_increment PRIMARY KEY,itemid int(10),expected_date date, foreign key(itemid) references product(itemid) On DELETE CASCADE);
CREATE TABLE PRODUCT (itemid int(10) not null primary key,category varchar(20) not null,Brand varchar(20),price int(10),size int(5),colour char(15));
CREATE TABLE CUSTOMER (username varchar(25) not null,passwords varchar(50));
CREATE TABLE FEEDBACK (itemid int(10),ratings int(1),reviews varchar(100));
CREATE TABLE PAYMENT (
itemid int(10),
orderid int(10),
name varchar(30),
mode_of_payment varchar(25),
total_amount int(15));
SELECT * from payment;
SELECT * from orders;
SELECT * from product;
SELECT * from feedback;
SELECT * from customer;
insert into PRODUCT values(20203002,"shoe2","bata",1050,10,"white");
insert into PRODUCT values(20203006,"cloths","peterengland",100,40,"red");
insert into feedback values(20203004,9,"Nice product");
insert into feedback values(20203005,10,"Best product");
insert into orders values(20203005,1,13/12/2020);
insert into orders values(0,20203006,"2020/12/20");
insert into payment values(20203004,20202004);
insert into payment values(20203003,20202003);