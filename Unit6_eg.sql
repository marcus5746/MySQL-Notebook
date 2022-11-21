SELECT MAX(Price),MIN(Price) FROM product;

SELECT COUNT(*) FROM product;
SELECT COUNT(Product_Place) FROM product;

#未分组
SELECT Product_Place FROM product 
WHERE Product_Name LIKE  '%墨粉%'; 

#分组
SELECT Product_Place FROM product 
WHERE Product_Name LIKE  '%墨粉%' 
GROUP BY Product_Place;

SELECT Product_Place, MAX(Price) FROM product 
WHERE Product_Name LIKE  '%墨粉%' 
GROUP BY Product_Place
ORDER BY MAX(Price);

SELECT Product_Place, count(Product_ID)
FROM product
WHERE Product_Place is not null 
GROUP BY Product_Place;

SELECT Product_Place, Sort_id,count(Product_ID)
FROM product
WHERE Product_Place is not null 
GROUP BY Product_Place, Sort_id
ORDER BY CONVERT(Product_Place USING GBK) DESC, Sort_id;

SELECT Product_Place, AVG(Price) FROM product 
GROUP BY Product_Place 
HAVING AVG(Price)>1000;

SELECT Product_name, Price FROM product 
WHERE Price>100000;

SELECT Product_name, Price FROM product 
HAVING Price>100000;

SELECT Product_name, Price FROM product 
WHERE Price>100000;

SELECT Product_name, Price FROM product 
HAVING Price>100000;

SELECT Product_Place, AVG(Price) FROM product 
GROUP BY Product_Place 
HAVING AVG(Price)>1000;

SELECT Product_Place, AVG(Price) FROM product 
WHERE AVG(Price)>1000
GROUP BY Product_Place; 

SELECT Sort_id,count(SubSort_ID) FROM product
WHERE year(Product_Date)=2017
GROUP BY Sort_ID
HAVING count(SubSort_ID)>50;

SELECT Product_Place AS Place FROM product;