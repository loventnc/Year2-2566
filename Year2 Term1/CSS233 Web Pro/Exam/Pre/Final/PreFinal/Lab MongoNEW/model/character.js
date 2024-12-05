const mongoose = require('mongoose'); // เอา Mongoose มาใช้
const Schema = mongoose.Schema; 

// โครงสร้างของ Data ที่จะเก็บ
// มีสองแบบให้เก็บ 1.Camel : characterSchema   2.Snake : character_schema
const characterSchema = new Schema({
  id: String,
  name: String,
  category: String,
  level: Number,
});

// นำไปใช้งาน
const CharacterModel = mongoose.model('Character', characterSchema);

// Export เป็น Module ทำให้นำไปใช้งานที่ Route อื่นได้
module.exports = CharacterModel;