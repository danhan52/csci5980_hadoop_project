set hive.execution.engine=mr;
use amazon;

CREATE TABLE products_reviews_orc (
asin STRING,
name STRING,
price INT,
imURL STRING,
brand STRING,
categories STRING,
rankCat STRING,
rank INT,
score INT,
reviewText STRING,
summary STRING,
helpful0 INT,
helpful1 INT
)
STORED AS ORC;
 
INSERT INTO TABLE products_reviews_orc
SELECT p.asin,
p.name,
p.price,
p.imURL,
p.brand,
p.categories,
p.rankCat,
p.rank,
r.score,
r.reviewText,
r.summary,
r.helpful0,
r.helpful1
FROM products_orc p
LEFT JOIN reviews_orc r on (p.asin=r.asin);
