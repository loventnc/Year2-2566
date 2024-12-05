const person1 = {
    Name: 'Iron man',
    Email: 'tony.stark@avengers.com',
    Address: 'New york, USA',
    Phone: 'xxx-xxx-xxxx'
}
const person2 = {
    Name: 'Captain America',
    Email: 'steve.roger@avengers.com',
    Address: 'Oregon, USA',
    Phone: 'yyy-yyy-yyyy',
}
const person3 = {
    Name: 'Thor',
    Email: 'thegodofthunder@avengers.com',
    Address: 'Main, Asgard',
    Phone: 'zzz-zzz-zzzz'
}

const showperson1 = document.getElementById("demo1")
const showperson2 = document.getElementById("demo2")
const showperson3 = document.getElementById("demo3")
showperson1.innerHTML = person1.Name + "<br>" + person1.Email + "<br>" + person1.Address + "<br>" + person1.Phone;
showperson2.innerHTML = person2.Name + "<br>" + person2.Email + "<br>" + person2.Address + "<br>" + person2.Phone;
showperson3.innerHTML = person3.Name + "<br>" + person3.Email + "<br>" + person3.Address + "<br>" + person3.Phone;