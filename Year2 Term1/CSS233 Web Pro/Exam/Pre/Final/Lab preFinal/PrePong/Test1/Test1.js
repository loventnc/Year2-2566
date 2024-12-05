var dt = new Date();
document.getElementById('date-time').innerHTML=dt;

(function newFact() {
    var facts = ['May the Force be with you', 'There is no place like home.', 'Carpe diem. Seize the day, boys. Make your lives extraordinary.','My mama always said life was like a box of chocolates. You never know what you are gonna get.'];
    var movie = ['Star Wars, 1977','The Wizard of Oz, 1939','Dead Poets Society, 1989','Forrest Gump, 1994']
    var randomFact = Math.floor(Math.random() * facts.length);
    document.getElementById('factDisplay').innerHTML = facts[randomFact];
    document.getElementById('movie').innerHTML = movie[randomFact];
  })();


var img0 = document.querySelector('img');
var img1 = document.getElementById('img1');
var img2 = document.getElementById('img2');
var img3 = document.getElementById('img3');

function changeimg1() {
    img0.src = "image-1.jpg";
}
function changeimg2() {
    img0.src = "image-2.jpg"
}
function changeimg3() {
    img0.src = "image-3.jpg"
}
img1.addEventListener('click',changeimg1);
img2.addEventListener('click',changeimg2);
img3.addEventListener('click',changeimg3);