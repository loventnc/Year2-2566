//import libraries to generate the frame window
import javax.swing.*;

//Create pubilc class name FirstExample
public class FirstExample {
    
    //Create main method 
    public static void main(String[] args) {
        JFrame myWindow; //declare a variable of type JFrame name myWindow
        myWindow = new JFrame(); //create an object of type JFrame
        myWindow.setSize(300,200); //set the size of the window
        myWindow.setTitle("My First Java Program"); //set the title of the window
        myWindow.setVisible(true); //make the window visible
    }
}