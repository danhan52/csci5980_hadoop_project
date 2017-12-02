
-- create people table
CREATE EXTERNAL TABLE people_csv (
rowID INT,
reviewerID STRING,
name STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES
(
	"separatorChar" = ",",
    "quoteChar"="\""
)
LOCATION '/user/root/people/';

-- create products table
CREATE EXTERNAL TABLE products_csv (
rowID INT,
asin STRING,
name STRING,
price INT,
imURL STRING,
brand STRING,
categories STRING,
rankCat STRING,
rank INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES
(
	"separatorChar" = ",",
    "quoteChar"="\""
)
LOCATION '/user/root/products/';

-- create reviews tables
CREATE EXTERNAL TABLE reviews_csv (
rowID INT,
reviewerID STRING,
score INT,
reviewText STRING,
summary STRING,
helpful0 INT,
helpful1 INT,
ts INT,
asin STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES
(
	"separatorChar" = ",",
    "quoteChar"="\""
)
LOCATION '/user/root/reviews/';
