const https = require('https');

https.get('https://jsonplaceholder.typicode.com/posts/1', (res) => {
  console.log(`Status Code: ${res.statusCode}`);
});