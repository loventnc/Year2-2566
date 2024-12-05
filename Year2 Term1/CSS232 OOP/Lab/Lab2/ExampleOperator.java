//2.1
public class ExampleOperator {
        static int x = 10;
        static int y = 20;
        static int a = 3;
        static int b = 9;
        static int c = 7;
        static int d = 1;
        static int u = 5;
        static int v = 15;
    public static void main(String[] args) {
        System.out.println("Examples of operators");


        //Increment and decrement operator
        System.out.println("Increment operator");
        System.out.println("Default x = " + x);
        System.out.println("+x = " + (+x));
        System.out.println("++x = " + (++x));
        System.out.println("x++ = " + (x++));

        System.out.println("Decrement operator");
        System.out.println("Default y = " + y);
        System.out.println("-x = " + (-y));
        System.out.println("--x = " + (--y));
        System.out.println("x-- = " + (y--));


        System.out.println();
        //Arithmetic operator
        System.out.println("Arithmetic operator");
        System.out.println("Default a = " + a);
        System.out.println("Default b = " + b);
        System.out.println("a + b = " + (a + b));
        System.out.println("a - b = " + (a - b));
        System.out.println("a * b = " + (a * b));
        System.out.println("a / b = " + (a / b));
        System.out.println("a % b = " + (a % b));


        System.out.println();
        //Relational operator
        System.out.println("Relational operator");
        System.out.println("Default c = " + c);
        System.out.println("Default d = " + d);
        System.out.println("c < d = " + (c < d));
        System.out.println("c > d = " + (c > d));
        System.out.println("c <= d = " + (c <= d));
        System.out.println("c >= d = " + (c >= d));
        System.out.println("c == d = " + (c == d));
        System.out.println("c != d = " + (c != d));

        
        System.out.println();
        //Conditional operator
        System.out.println("Conditional operator");
        System.out.println("Default u = " + u);
        System.out.println("Default v = " + v);
        System.out.println("u < v ? u : v = " + (u < v ? u : v));
        System.out.println("u > v ? u : v = " + (u > v ? u : v));
    }
}