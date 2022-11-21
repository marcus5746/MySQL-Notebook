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






select Product_id,Product_name,Product_Date,subsort_id from Product
order by Price desc
limit 10,10;

select * from Product
order by Price desc
limit 1;