const express = require('express');
const app = express();
const mongoose = require('mongoose');
const Character = require('./model/character'); // การอ้าวอิงถึงไฟล์ที่อยู่ Sub Folder

app.use(express.json())
const PORT = 3000;

mongoose.connect('mongodb+srv://Nattanischa:adminlovely2003@nattanischa.mnn2d72.mongodb.net/', {
  useNewUrlParser: true
});



const connection = mongoose.connection;
connection.once("open", () => {
  console.log("MongoDB database connected.");
});

app.get('/characters', async (req, res) => {
    const result = await Character.find({});
    res.send(result);
});

app.post('/characters', async (req, res) => {
    try {
      console.log('req.body: ', req.body); // การ Log ดูเผื่อเกิด Error
  
      //  เก็บข้อมูลให้ตรงกับ Field ของ Character.js
      const newCharacter = new Character({
        id: req.body.id,
        name: req.body.name,
        category: req.body.category,
        level: req.body.level,
      });
  
      await Character.create(newCharacter); // คำสั่งเพิ่มข้อมูลใหม้ ของ Mongoose
      res.send("Character added");
    } catch (err) { // ถ้า err จะแสดง
      console.log("error: ", err);
    }
});

// แบบนี้ไม่ดี ถ้าข้อมูลเยอะ ก็ต้องเขียนเยอะ
// app.get('/characters/ironman', async (req, res) => {
//     const result = await Character.find({name:'Iron man'}).exec();
//     console.log(result);
//     res.json(result);
// });

// กำหนดตัวแปรแบบนี้ดีกว่า

app.get('/characters/:name', async (req, res) => {
    const name = req.params.name;
    const result = await Character.find({name}).exec();
    console.log(result);
    res.json(result);
});

// app.put update ชื่อ
app.put('/characters/update', async (req,res) => {
  const id = req.body.id;
  const name = req.body.name;
  const result = await Character.updateOne({id:id},{name:name});
  res.send(result);
});

// app.delete
app.delete('/characters/delete', async (req,res) => {
  const id = req.body.id;
  const result = await Character.deleteOne({id:id});
  res.send(result);
});

app.listen(PORT, () => {
  console.log('Server is running');
});