import java.util.Scanner;

public class ForTest {
    public static void main (String[] args) {
        //input
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your number : ");
        int number = sc.nextInt();

        //process
        int sum = 1;
        for(int i = number; i > 1; i--) {
            sum = sum*i;
        }
        System.out.println(sum);
    }
}
