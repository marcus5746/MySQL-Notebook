CREATE DATABASE unit4_mydb;
USE  unit4_mydb;
CREATE TABLE goods(
                   id INT PRIMARY KEY,
                   name VARCHAR(32) NOT NULL,
                   price INT
                   );

insert into goods(id,name ,price)
values
(1,'notebook',4999);

insert into goods(name ,price,id)
values
('computer',9500,2);

insert into goods
values
(3,'mobile phone',2999);

insert into goods set id=4 ,name= 'notebook ' ,price=4500;

insert into goods(id, name)
values
(5,'Printer');
insert into goods set id=6 , name= ' Router ' ;

insert into goods(id,price)
values
(7,9998);

insert into goods(id,name,price)
values
(7,'server',9998),
(8,'computer',5998),
(9,'router',nul1),
(10,' Mobile phone',null);

set sql_safe_updates=0;
update goods set price=5899 where id=2;
update goods set name='笔记本', price=9899 where id=1;

update product set product_place= '广东' where Product_Place='惠州';
update product set price=price*0.9;
update product set price=price*1.2 where year(product_date)>2012;

CREATE TABLE goods_bak1 SELECT * FROM goods;
delete from goods_bak1 where id=3;
delete from goods_bak1 where price>=9000 and price<=10000;
delete from goods_bak1;

CREATE TABLE goods_bak2 SELECT * FROM goods;
TRUNCATE TABLE goods_bak2;

CREATE DATABASE unit4_db;
USE  unit4_db;

create table product_bak select * from product;
TRUNCATE TABLE product_bak;
delete from product where Product_Place='美国';
delete from product where price>50 and price<100;
delete from product where month(Product_Date)>0 and month(Product_Date)<7;

