CREATE TABLE IF NOT EXISTS gold_price_db(
   id               VARCHAR(2) NOT NULL PRIMARY KEY
  ,timestamp        VARCHAR(10) NOT NULL
  ,metal            VARCHAR(3) NOT NULL
  ,currency         VARCHAR(3) NOT NULL
  ,exchange         VARCHAR(8) NOT NULL
  ,symbol           VARCHAR(15) NOT NULL
  ,prev_close_price VARCHAR(7) NOT NULL
  ,open_price       VARCHAR(7) NOT NULL
  ,low_price        VARCHAR(7) NOT NULL
  ,high_price       VARCHAR(7) NOT NULL
  ,open_time        VARCHAR(19) NOT NULL
  ,price            VARCHAR(7) NOT NULL
  ,ch               VARCHAR(5) NOT NULL
  ,chp              VARCHAR(4) NOT NULL
  ,ask              VARCHAR(7) NOT NULL
  ,bid              VARCHAR(7) NOT NULL
  ,price_gram_24k   VARCHAR(5) NOT NULL
  ,price_gram_22k   VARCHAR(5) NOT NULL
  ,price_gram_21k   VARCHAR(5) NOT NULL
  ,price_gram_20k   VARCHAR(5) NOT NULL
  ,price_gram_18k   VARCHAR(5) NOT NULL
  ,price_gram_16k   VARCHAR(5) NOT NULL
  ,price_gram_14k   VARCHAR(5) NOT NULL
  ,price_gram_10k   VARCHAR(5) NOT NULL
);
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('1','1736504186','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.51','2025-01-10 00:00:00','2681.34','10.95','0.41','2681.84','2680.79','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('2','1736504276','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.51','2025-01-10 00:00:00','2681.32','10.93','0.41','2681.83','2680.86','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('3','1736504536','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.27','10.88','0.41','2681.80','2680.74','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('4','1736504540','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.37','10.98','0.41','2681.87','2680.73','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('5','1736504542','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.37','10.97','0.41','2681.90','2680.83','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('6','1736504546','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.36','10.97','0.41','2681.86','2680.89','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('7','1736504551','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.71','10.32','0.39','2681.24','2680.17','86.19','79.00','75.41','71.82','64.64','57.46','50.28','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('8','1736504553','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.78','10.39','0.39','2681.30','2680.29','86.19','79.01','75.42','71.82','64.64','57.46','50.28','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('9','1736504556','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.55','10.16','0.38','2681.08','2680.18','86.18','79.00','75.41','71.82','64.64','57.45','50.27','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('10','1736504560','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.65','10.26','0.38','2681.09','2680.21','86.18','79.00','75.41','71.82','64.64','57.46','50.27','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('11','1736504564','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.84','10.45','0.39','2681.27','2680.39','86.19','79.01','75.42','71.83','64.64','57.46','50.28','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('12','1736504567','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.69','10.30','0.39','2681.13','2680.24','86.19','79.00','75.41','71.82','64.64','57.46','50.28','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('13','1736504613','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.12','10.73','0.40','2681.54','2680.70','86.20','79.02','75.43','71.83','64.65','57.47','50.28','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('14','1736504615','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.14','10.75','0.40','2681.53','2680.69','86.20','79.02','75.43','71.83','64.65','57.47','50.28','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('15','1736504619','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.26','10.87','0.41','2681.62','2680.76','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('16','1736504622','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.20','10.81','0.40','2681.64','2680.75','86.20','79.02','75.43','71.84','64.65','57.47','50.28','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('17','1736504626','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.21','10.82','0.40','2681.62','2680.82','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('18','1736504630','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.22','10.81','0.40','2681.61','2680.82','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('19','1736504634','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.30','11.00','0.40','2681.76','2680.84','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('20','1736504637','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.40','11.01','0.40','2681.75','2680.98','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('21','1736504639','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.31','10.92','0.40','2681.82','2680.87','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('22','1736504644','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.29','10.89','0.40','2681.70','2680.88','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('23','1736504648','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.26','10.87','0.40','2681.70','2680.80','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('24','1736504651','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.26','10.87','0.40','2681.71','2680.81','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('25','1736504656','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.34','10.95','0.40','2681.78','2680.87','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('26','1736504660','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.36','10.97','0.40','2681.78','2680.95','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('27','1736504664','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.41','11.02','0.40','2681.82','2680.97','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('28','1736504668','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.44','11.05','0.40','2681.87','2681.01','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('29','1736504674','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.35','10.95','0.40','2681.74','2680.92','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('30','1736504676','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.35','10.95','0.40','2681.72','2680.91','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('31','1736504679','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.34','10.95','0.40','2681.74','2680.93','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('32','1736504683','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.36','10.97','0.40','2681.72','2680.85','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('33','1736504688','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.36','10.97','0.40','2681.72','2680.91','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('34','1736504691','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.31','10.92','0.40','2681.72','2680.93','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('35','1736504693','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.31','10.92','0.40','2681.71','2680.96','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('36','1736504697','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.48','11.09','0.42','2681.92','2681.01','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('37','1736504701','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.48','11.09','0.42','2681.90','2681.05','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('38','1736504706','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.42','11.03','0.42','2681.82','2680.89','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('39','1736504710','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.45','11.06','0.42','2681.93','2680.99','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('40','1736504713','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.39','11.00','0.42','2681.84','2680.96','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('41','1736504717','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.33','10.94','0.42','2681.86','2680.91','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('42','1736504722','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.40','11.01','0.42','2681.83','2680.93','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('43','1736504724','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.40','11.01','0.42','2681.82','2680.90','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('44','1736504729','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.47','11.08','0.41','2681.89','2681.07','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('45','1736504732','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.47','11.08','0.41','2681.85','2681.04','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('46','1736504736','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.46','11.07','0.41','2681.88','2681.12','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('47','1736504739','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.50','11.11','0.42','2681.92','2681.14','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('48','1736504743','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.50','11.11','0.42','2681.92','2681.10','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('49','1736504747','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.43','11.04','0.41','2681.87','2680.97','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('50','1736504751','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.31','10.92','0.41','2681.78','2680.84','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('51','1736504753','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.32','10.93','0.41','2681.78','2680.86','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('52','1736504758','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.32','10.93','0.41','2681.75','2680.87','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('53','1736504760','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.36','10.97','0.41','2681.75','2680.87','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('54','1736504764','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.33','10.93','0.41','2681.78','2680.87','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('55','1736504768','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.33','10.93','0.41','2681.78','2680.93','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('56','1736504771','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.36','10.97','0.41','2681.76','2680.93','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('57','1736504775','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.35','10.97','0.41','2681.72','2680.85','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('58','1736504778','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.43','11.04','0.41','2681.85','2680.97','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('59','1736504781','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.50','11.11','0.42','2681.90','2681.07','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('60','1736504784','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.63','11.24','0.42','2682.00','2681.00','86.22','79.03','75.44','71.85','64.66','57.48','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('61','1736504789','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.42','11.03','0.41','2681.92','2680.97','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('62','1736504792','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.42','11.03','0.41','2681.86','2680.98','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('63','1736504796','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.49','11.10','0.42','2681.91','2681.04','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('64','1736504800','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.46','11.07','0.41','2681.87','2681.04','86.21','79.03','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('65','1736504805','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.51','11.12','0.42','2681.95','2681.06','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('66','1736504808','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.49','11.10','0.42','2681.92','2681.03','86.21','79.03','75.44','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('67','1736504811','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.38','10.99','0.41','2681.84','2680.96','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('68','1736504814','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.38','10.99','0.41','2681.79','2680.96','86.21','79.02','75.43','71.84','64.66','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('69','1736504817','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.27','10.88','0.41','2681.72','2680.82','86.20','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('70','1736504819','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.28','10.89','0.41','2681.71','2680.81','86.21','79.02','75.43','71.84','64.65','57.47','50.29','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('71','1736504822','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2681.18','10.79','0.40','2681.62','2680.73','86.20','79.02','75.43','71.83','64.65','57.47','50.28','35.92');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('72','1736504827','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.95','10.56','0.40','2681.42','2680.47','86.19','79.01','75.42','71.83','64.65','57.46','50.28','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('73','1736504831','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.94','10.55','0.40','2681.37','2680.51','86.19','79.01','75.42','71.83','64.65','57.46','50.28','35.91');
INSERT INTO gold_price_db(id,timestamp,metal,currency,exchange,symbol,prev_close_price,open_price,low_price,high_price,open_time,price,ch,chp,ask,bid,price_gram_24k,price_gram_22k,price_gram_21k,price_gram_20k,price_gram_18k,price_gram_16k,price_gram_14k,price_gram_10k) VALUES ('74','1736504833','XAU','USD','FOREXCOM','FOREXCOM:XAUUSD','2670.39','2670.39','2668.58','2682.79','2025-01-10 00:00:00','2680.95','10.56','0.40','2681.43','2680.56','86.19','79.01','75.42','71.83','64.65','57.46','50.28','35.91');
