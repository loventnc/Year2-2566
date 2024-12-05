// const left = document.getElementsByName('left')
// const right = document.getElementsByName('right')
// const up = document.getElementsByName('up')
// const down = document.getElementsByName('down')
// const hide = document.getElementsByName('hide')
// const show = document.getElementsByName('show')
// const square = document.getElementsByName('square')

// left.addEventListener('click',leftClick);
// right.addEventListener('click',rightClick);
// up.addEventListener('click',upClick);
// down.addEventListener('click',downClick);
// hide.addEventListener('click',hideClick);
// show.addEventListener('click',showClick);

// function leftClick(){
//     square.className = "leftbox"
// }
// function rightClick(){
//     square.className = "righttbox"
// }
// function upClick(){
//     square.className = "upbox"
// }
// function downClick(){
//     square.className = "downbox"
// }
// function hideClick(){
//     square.className = "hidetbox"
// }
// function showClick(){
//     square.className = "showbox"
// }
function moveleft() {
    const img = document.getElementById('square');
    img.style.left = `${img.offsetLeft - 10}px`;
  }
  
function moveright() {
    const img = document.getElementById('square');
    img.style.left = `${img.offsetLeft + 10}px`;
  }
  
function moveup() {
    const img = document.getElementById('square');
    img.style.top = `${img.offsetTop - 10}px`;
  }
  
function movedown() {
    const img = document.getElementById('square');
    img.style.top = `${img.offsetTop + 10}px`;
  }
function hide() {
    const square = document.getElementById('square')
    square.style.display = "none";
  }

function show() {
    const square = document.getElementById('square')
    square.style.display = "block";
  }