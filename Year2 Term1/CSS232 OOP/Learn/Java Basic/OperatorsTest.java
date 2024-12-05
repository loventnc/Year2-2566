public class OperatorsTest {
    public static void main (String[] args) {
        //Initaial value
        int a = 9;
        int b = 9;

        //-----Arithmetic------
        //Addition 
        int result_add = a + b;
        System.out.println("Addition Result = " + result_add);
        //Increment result_add (result_add = result_add + 1)
        ++result_add;
        System.out.println("Increment Result of Addition = " + result_add);
        System.out.println();
        //Modulus
        double result_mod = result_add % b;
        System.out.println("Modulus Result = " + result_mod);
        System.out.println();

        //-----Assignment and Bitwise-----
        //Add  to variable a
        a += 5;
        System.out.print("Result of variable a = " + a);
        System.out.println();
        //Ex.2 in binary is 13, 1 in binary is 01, 10 | 01 = 11 = 3
        System.out.print("Bitwise of 2 | 1 = " + (2 | 1));
        System.out.println();
        System.out.println();

        //-----Comparison-----
        boolean compare_ab = (a ==b);
        System.out.println("Compare a and b = " + compare_ab);
        System.out.println();

        //-----Logical-----
        boolean logical_ab = (a<5 && b>8);
        System.out.println("Logical a and b = " + logical_ab);
    }
}
