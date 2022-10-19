#CREATED BY 王宇飞 AT 2022-10-19 14:42:26#

CREATE DATABASE unit2_db;

USE unit2_db;

CREATE TABLE product(
Product_ID char(10),
Product_Name varchar(100),
Product_Code varchar(10),
Price float,
Place char(20),
Unit varchar(20),
Detail varchar(20),
Subsort_ID varchar(10),
Sort_ID varchar(10),
Description varchar(255)
);

RENAME TABLE product to tb_product;

ALTER TABLE tb_product change Place Product_Place varchar(50);

ALTER TABLE tb_product add Product_Date date;

ALTER TABLE tb_product drop Description;

ALTER TABLE tb_product modify Product_Date date after Product_Place;

ALTER TABLE tb_product modify Price float after Product_Date;