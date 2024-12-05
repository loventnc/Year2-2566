//3
import java.util.Scanner;

public class Convert {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter temperature: ");
        double celsius = scanner.nextDouble();
        
        double fahrenheit = (9.0 / 5.0) * celsius + 32;
        
        System.out.println("Temperature in Fahrenheit: " + fahrenheit + " Fahrenheit");
        
        scanner.close();
    }
}