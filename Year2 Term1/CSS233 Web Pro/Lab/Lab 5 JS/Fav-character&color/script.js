window.onload = function() {
    let text;
    let person = prompt("What is your favorite character?", "");
    if (person == null || person == "") {
        text = "User cancelled the prompt.";
    } else {
        let color = prompt("What is the main color of " + person, "");
        if (color == null || color == "") {
            text = "User cancelled the prompt.";
        } else {
            console.log(person + " is your favorite character.");
            console.log(person + " is " + color + ".");
        }
    }
}