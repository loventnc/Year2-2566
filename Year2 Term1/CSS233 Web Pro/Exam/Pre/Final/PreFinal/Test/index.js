// create server http module
// const http = require("http"); 
// let server = http.createServer((request, response) => { 
//     console.log("I got your request!"); 
//     response.write("Hello from a Node Server!"); 
//     response.end(); 
// }); 

// const PORT = process.env.PORT || 8000; 
// server.listen(PORT);


const express = require("express");
const app = express();
app.get('/', (req, res) => {
    res.send('GET request to the homepage')
});
app.post('/', (req, res) => {
    res.send('POST request to the homepage')
});
app.post('/hello', (req, res) => {
    res.send('POST hello!')
});
app.listen(3000, function() {
    console.log("Example app listening on port 3000")
});
