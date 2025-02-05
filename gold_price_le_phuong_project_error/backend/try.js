const response = await axios.get('https://www.goldapi.io/api/XAU/USD', {
    headers: { 'x-access-token': 'goldapi-23gosm5qg33l1-io' }
  });
  console.log(response.data); // In ra dữ liệu lấy từ API
  