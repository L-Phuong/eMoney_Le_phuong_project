mkdir mysql_data
tar -xzvf mysql_data.tar.gz -C ./mysql-data
ports:
    - "3307-3307"
volume:
    - C:/Users/"user"/OneDrive/Desktop/le_phuong_project/gold_price_tracker_v2/mysql-data/data:/var/lib/mysql