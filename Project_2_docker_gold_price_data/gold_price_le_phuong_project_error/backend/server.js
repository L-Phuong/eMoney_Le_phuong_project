const express = require('express');
const mysql = require('mysql2');
const axios = require('axios');
const cors = require('cors'); // Import cors
const app = express();
const port = 5000;

// Sử dụng middleware CORS
app.use(cors());

// Kết nối tới cơ sở dữ liệu MySQL
const connection = mysql.createConnection({
  host: 'mysql',
  user: 'root',  // Thay thế với thông tin kết nối của bạn
  password: 'rootpassword',
  database: 'gold_prices'
});

// API để lấy giá vàng từ API bên ngoài
app.get('/fetch-gold-price', async (req, res) => {
  try {
    // Gọi API vàng để lấy dữ liệu
    const response = await axios.get('https://www.goldapi.io/api/XAU/USD', {
      headers: { 'x-access-token': 'goldapi-23gosm5qg33l1-io' }
    });

    const data = response.data;

    // Lưu dữ liệu vào cơ sở dữ liệu MySQL
    const query = `INSERT INTO gold_price_db (timestamp, metal, currency, exchange, symbol, prev_close_price, open_price, low_price, high_price, open_time, price, ch, chp, ask, bid, price_gram_24k, price_gram_22k, price_gram_21k, price_gram_20k, price_gram_18k, price_gram_16k, price_gram_14k, price_gram_10k) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

    const values = [
      data.timestamp,
      data.metal,
      data.currency,
      data.exchange,
      data.symbol,
      data.prev_close_price,
      data.open_price,
      data.low_price,
      data.high_price,
      data.open_time,
      data.price,
      data.ch,
      data.chp,
      data.ask,
      data.bid,
      data.price_gram_24k,
      data.price_gram_22k,
      data.price_gram_21k,
      data.price_gram_20k,
      data.price_gram_18k,
      data.price_gram_16k,
      data.price_gram_14k,
      data.price_gram_10k
    ];

    // Chạy query để lưu dữ liệu vào cơ sở dữ liệu
    connection.query(query, values, (err, results) => {
      if (err) {
        console.error('Lỗi khi lưu dữ liệu:', err);
        return res.status(500).json({ error: 'Lỗi khi lưu dữ liệu' });
      }
      res.json({ message: 'Dữ liệu đã được lưu thành công', results });
    });
  } catch (error) {
    console.error('Lỗi khi lấy dữ liệu:', error);
    res.status(500).json({ error: 'Lỗi khi lấy dữ liệu từ API' });
  }
});

// Khởi động server
app.listen(port, () => {
  console.log(`Server đang chạy tại http://localhost:${port}`);
});
