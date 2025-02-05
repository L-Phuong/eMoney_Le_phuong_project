TYPE=VIEW
query=select `gold_prices`.`gold_price_db`.`id` AS `id`,`gold_prices`.`gold_price_db`.`timestamp` AS `timestamp`,`gold_prices`.`gold_price_db`.`metal` AS `metal`,`gold_prices`.`gold_price_db`.`currency` AS `currency`,`gold_prices`.`gold_price_db`.`exchange` AS `exchange`,`gold_prices`.`gold_price_db`.`symbol` AS `symbol`,`gold_prices`.`gold_price_db`.`prev_close_price` AS `prev_close_price`,`gold_prices`.`gold_price_db`.`open_price` AS `open_price`,`gold_prices`.`gold_price_db`.`low_price` AS `low_price`,`gold_prices`.`gold_price_db`.`high_price` AS `high_price`,`gold_prices`.`gold_price_db`.`open_time` AS `open_time`,`gold_prices`.`gold_price_db`.`price` AS `price`,`gold_prices`.`gold_price_db`.`ch` AS `ch`,`gold_prices`.`gold_price_db`.`chp` AS `chp`,`gold_prices`.`gold_price_db`.`ask` AS `ask`,`gold_prices`.`gold_price_db`.`bid` AS `bid`,`gold_prices`.`gold_price_db`.`price_gram_24k` AS `price_gram_24k`,`gold_prices`.`gold_price_db`.`price_gram_22k` AS `price_gram_22k`,`gold_prices`.`gold_price_db`.`price_gram_21k` AS `price_gram_21k`,`gold_prices`.`gold_price_db`.`price_gram_20k` AS `price_gram_20k`,`gold_prices`.`gold_price_db`.`price_gram_18k` AS `price_gram_18k`,`gold_prices`.`gold_price_db`.`price_gram_16k` AS `price_gram_16k`,`gold_prices`.`gold_price_db`.`price_gram_14k` AS `price_gram_14k`,`gold_prices`.`gold_price_db`.`price_gram_10k` AS `price_gram_10k` from `gold_prices`.`gold_price_db`
md5=e623cc6f10787bdda8a49acbcb4b2a16
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-03 02:45:12
create-version=1
source=SELECT * FROM gold_price_db
client_cs_name=latin1
connection_cl_name=latin1_swedish_ci
view_body_utf8=select `gold_prices`.`gold_price_db`.`id` AS `id`,`gold_prices`.`gold_price_db`.`timestamp` AS `timestamp`,`gold_prices`.`gold_price_db`.`metal` AS `metal`,`gold_prices`.`gold_price_db`.`currency` AS `currency`,`gold_prices`.`gold_price_db`.`exchange` AS `exchange`,`gold_prices`.`gold_price_db`.`symbol` AS `symbol`,`gold_prices`.`gold_price_db`.`prev_close_price` AS `prev_close_price`,`gold_prices`.`gold_price_db`.`open_price` AS `open_price`,`gold_prices`.`gold_price_db`.`low_price` AS `low_price`,`gold_prices`.`gold_price_db`.`high_price` AS `high_price`,`gold_prices`.`gold_price_db`.`open_time` AS `open_time`,`gold_prices`.`gold_price_db`.`price` AS `price`,`gold_prices`.`gold_price_db`.`ch` AS `ch`,`gold_prices`.`gold_price_db`.`chp` AS `chp`,`gold_prices`.`gold_price_db`.`ask` AS `ask`,`gold_prices`.`gold_price_db`.`bid` AS `bid`,`gold_prices`.`gold_price_db`.`price_gram_24k` AS `price_gram_24k`,`gold_prices`.`gold_price_db`.`price_gram_22k` AS `price_gram_22k`,`gold_prices`.`gold_price_db`.`price_gram_21k` AS `price_gram_21k`,`gold_prices`.`gold_price_db`.`price_gram_20k` AS `price_gram_20k`,`gold_prices`.`gold_price_db`.`price_gram_18k` AS `price_gram_18k`,`gold_prices`.`gold_price_db`.`price_gram_16k` AS `price_gram_16k`,`gold_prices`.`gold_price_db`.`price_gram_14k` AS `price_gram_14k`,`gold_prices`.`gold_price_db`.`price_gram_10k` AS `price_gram_10k` from `gold_prices`.`gold_price_db`
