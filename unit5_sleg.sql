SELECT  Product_ID, Product_Name, Product_Code, Product_Place, Product_Date, Price, Unit, Detail, Subsort_ID, Sort_ID FROM Product;

SELECT  Product_ID, Product_Name,Price FROM Product;

select * from Product
where Product_Place='天津';

select Product_id,Product_name from Product
where Price>=1800 and Price<=5000;

select * from Product
where Price between 200 and 500;

select * from Product
where Price not between 200 and 500;

select * from Product
where Product_place in ('天津','北京','日本');

select * from Product
where Product_place not in ( '天津','北京','日本');

select Product_name , Price,Product_Place from Product
where Product_place is null;

select Product_name , Price,Product_Place from Product
where Product_place is not null;

select distinct Product_place from Product
where Product_place is not null;

select Product_name , Price,Product_place from Product
where Product_Name like '%复印机%';

select Product_name,Price,Product_place from Product
where Product_Name like '______复印机';

SELECT * FROM Product WHERE Product_Name Like '%\%\%%';

select * from Product
where Product_place='天津' and Product_name like '%复印机';

select * from Product
where Product_Name like '%复印机'or Product_name like '%过胶机';

select * from Product
where (Product_place='北京' ) and (Product_Name like '%复印机'or Product_name like '%过胶机');


SELECT *FROM Product WHERE
roduct_Name like '%复印机' AND Product_Place='北京'
OR
roduct_Name like '%过胶机' AND Product_Place='北京';


select Product_ID,Product_Name,Price,Product_Date from Product
where year(Product_date) in (2016,2017);

select * from Product
where Product_name like '%理光%墨粉%';

select * from Product
where Product_name like '%理光%' or Product_name like '%墨粉%';

select * from Product
where Product_Place is not null and Product_name like '%计算器% ';

select distinct Product_place from Product
where Product_Name like '%电话机%';

select * from Product
where (Price<1000 and Product_name like '%书柜%' ) or (Price>1000 and Price<2000 and Product_name like '%保险柜%');

select * from Product
where Product_name like '%理光%墨粉%'
order by Price desc;

select * from Product
where Product_name like '%理光%墨粉%'
order by Price desc, Product_id;

SELECT * FROM Product
WHERE Product_Name LIKE '%墨粉%'
ORDER BY CONVERT (Product_Name USING GBK) DESC;

select Product_id,Product_name,Price from Product
order by Price desc
limit 10;

select Product_id,Product_name,Price from Product
order by Price desc
limit 4,6;