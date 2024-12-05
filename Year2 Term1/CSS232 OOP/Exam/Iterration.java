import java.util.Scanner;

public class Iterration {
    public static void main(String[] args) {
        //input
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your number : ");
        int number = sc.nextInt();
 
        //process
        int sum = 1;
        while(number > 1) {
            sum = sum *number;
            number--;
        }
        System.out.println("Factorial is = " + sum);   
    }
}
