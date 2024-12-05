const express = require('express');
const app = express();
const mongoose = require('mongoose');

app.use(express.json())
const PORT = 4664;

mongoose.connect('mongodb+srv://Nattanischa:adminlovely2003@nattanischa.mnn2d72.mongodb.net/', {
    useNewUrlParser: true
});

const connection = mongoose.connection;
connection.once("open", () => {
    console.log("MongoDB database connected.");
});

app.get('/', async (req, res) => {
    const result = await({});
    res.send("This is lab test 2”");
    console.log('Request is coming');
});


app.listen(PORT, () => {
    console.log('Server is running');
});