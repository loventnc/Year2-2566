//2.2
public class ExampleControlStatements {
    public static void main(String[] args){
        //if statement
        System.out.println("If statement");
        int x = 10;
        int y = 20;
        System.out.println("x = " + x);
        System.out.println("y = " + y);
        if (x < y) {
            System.out.println("x is less than y");
        }
        else {
            System.out.println("x is greater than y");
        }

        System.out.println();
        //switch statement
        System.out.println("Switch statement");
        char grade = 'B';
        switch (grade) {
            case 'A':
                System.out.println("Very Very good!");
                break;
            case 'B':
                System.out.println("Good");
                break;
            case 'C':
                System.out.println("Pass");
                break;
            case 'F':
                System.out.println("Fail");
                break;
            default:
                System.out.println("Invalid grade");
        }

        System.out.println();
        //for loop
        System.out.println("For loop");
        int a = 10;
        int sum = 0;
        for (int i = 1; i <= a; ++i) {
            sum += i;     
        }
        System.out.println("Total sum = " + sum);

        System.out.println();
        //while loop
        System.out.println("While loop");
        int i = 0;
        while (i <= 5) {
            System.out.println(i);
            i++;
        }

        System.out.println();
        //do while loop
        System.out.println("Do while loop");
        int j = 0;
        do{
            System.out.println(j);
            j++;
        }
        while (j > 5);
    }
}