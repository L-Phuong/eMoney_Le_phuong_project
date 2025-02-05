Zip: docker run --rm -v gold_price_tracker_v3_mysql_data:/data -v C:\Users\ASUS\eMoney_project\gold_price_tracker_v3:/backup busybox tar czf /backup/mysql_data.tar.gz /data

Open:
mkdir mysql_data
tar -xzvf mysql_data.tar.gz -C ./mysql_data
ports:
    - "3307-3307"
volume:
    - C:/Users/"user"/OneDrive/Desktop/le_phuong_project/gold_price_tracker_v3/mysql-data/data:/var/lib/mysql
    - /Users/lephuong/Desktop/eMoney_project/gold_price_tracker_v3/mysql_data/data:/var/lib/mysql

test:
docker exec -it mysql-container mysql -u root -p

create view:
CREATE VIEW gold_price_view AS SELECT * FROM gold_price_db;