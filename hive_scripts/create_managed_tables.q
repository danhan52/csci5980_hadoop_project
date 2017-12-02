-- create people table
CREATE TABLE people_orc (
  reviewerID STRING,
  name STRING
)
STORED AS ORC;
 
FROM people_csv f
INSERT INTO TABLE people_orc
SELECT reviewerID, name
;
 
-- create products table
CREATE TABLE products_orc (
  asin STRING,
  name STRING,
price INT,
imURL STRING,
brand STRING,
categories STRING,
rankCat STRING,
rank INT
)
STORED AS ORC;
 
FROM products_csv f
INSERT INTO TABLE products_orc
SELECT asin ,name
,price ,imURL
,brand ,categories
,rankCat ,rank
;

-- create reviews table
CREATE TABLE reviews_orc (
  reviewerID STRING,
  score INT,
reviewText STRING,
summary STRING,
helpful0 INT,
helpful1 INT,
ts INT,
asin STRING
)
STORED AS ORC;
 
FROM reviews_csv f
INSERT INTO TABLE reviews_orc
SELECT reviewerID ,score
,reviewText ,summary
,helpful0 ,helpful1
,ts ,asin
;
