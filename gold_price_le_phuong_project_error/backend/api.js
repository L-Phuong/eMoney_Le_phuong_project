const axios = require('axios');

axios.get('https://www.goldapi.io/api/XAU/USD', {
  headers: {
    'x-access-token': 'goldapi-23gosm5qg33l1-io'  // Đảm bảo API key chính xác
  }
})
.then(response => {
  console.log(response.data); // In dữ liệu trả về để kiểm tra
})
.catch(error => {
  console.log('Lỗi kết nối đến API:', error.message); // In lỗi kết nối API
});
3