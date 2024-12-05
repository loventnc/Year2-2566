const express = require('express');
const app = express();
const mongoose = require('mongoose');
const Character = require('./model/character');

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
      console.log('req.body: ', req.body);
  
      const newCharacter = new Character({
        id: req.body.id,
        name: req.body.name,
        category: req.body.category,
        level: req.body.level,
      });
  
      await Character.create(newCharacter);
      res.send("Character added");
    } catch (err) {
      console.log("error: ", err);
    }
});

app.get('/characters/ironman', async (req, res) => {
    const result = await Character.find({name:'Iron man'}).exec();
    console.log(result);
    res.json(result);
});

// app.get('/characters/:name')

// app.put
app.put('/characters/update', async (req,res) => {
  const id = req.body.id;
  const name = req.body.name;
  const result = await Character.updateOne({id:id},({name:name}));
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