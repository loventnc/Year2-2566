public class DataTypeTest {
    public static void main(String[] args) {
        //Byte (-128 to 127)
        byte a = 100;
        //Short (-32,768 to 32,767)
        short b = 5000;
        //Int (-2,147,483,648 to 2,147,483,647)
        int c = 100000;
        //Long (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
        long d = 15000000000L;
        //Float (3.4e-038 to 3.4e+038)
        float e = 5.75f;
        //Double (1.7e-308 to 1.7e+308)
        double f = 19.99d;
        //Boolean (true or false)
        boolean isJavafun = true;
        //Char 
        char g = 'A';
        //String
        String h = "Run.........";

        //print
        System.out.println("Byte: " + a);
        System.out.println("Short: " + b);
        System.out.println("Int: " + c);
        System.out.println("Long: " + d);
        System.out.println("Float: " + e);
        System.out.println("Double: " + f);
        System.out.println("Boolean: " + isJavafun);
        System.out.println("Char: " + g);
        System.out.println("String: " + h);
    }
}