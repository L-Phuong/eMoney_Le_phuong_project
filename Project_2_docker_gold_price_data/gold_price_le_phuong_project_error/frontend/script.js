const express = require('express');
const axios = require('axios');
const app = express();

app.get('/gold-price', (req, res) => {
  axios.get('https://www.goldapi.io/api/XAU/USD', {
    headers: {
      'x-access-token': 'goldapi-23gosm5qg33l1-io'
    }
  })
  .then(response => {
    res.json(response.data);
  })
  .catch(error => {
    console.error('Lỗi kết nối API:', error.message);
    res.status(500).json({ error: 'Lỗi kết nối đến API' });
  });
});

app.listen(3000, () => {
  console.log('Server chạy ở port 3000');
});
