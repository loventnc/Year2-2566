public class CastingTest {
    public static void main(String[] args) {
        //Widening Casting
        //create integer number
        int myInt = 9; 
        //Convert integer to double
        double myDouble = myInt; 

        //Narrowing Casting
        double myDouble2 = 9.78;
        //convert double to int
        int myInt2 = (int) myDouble2; //Manual casting: double to int

        //Print
        System.out.println("Interger: " + myInt); 
        System.out.println("After convert: " + myDouble); 
        System.out.println("Double: " + myDouble2);
        System.out.println("After convert: " + myInt2);
    }
}
