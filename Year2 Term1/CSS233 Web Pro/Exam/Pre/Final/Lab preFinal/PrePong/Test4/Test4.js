var data = new Array(); // creating array

function add_element(){
data.push(document.getElementById('t1').value); // adding element to array
document.getElementById('t1').value=''; // Making the text box blank
sortname();
disp(); // displaying the array elements
}

function disp(){
var str='';
for (i=0;i<data.length;i++) 
{ 
str += data[i] + "<br >";  // adding each element with key number to variable
} 

document.getElementById('disp').innerHTML=str; // Display the elements of the array
}

function sortname(){
    data.sort();
}