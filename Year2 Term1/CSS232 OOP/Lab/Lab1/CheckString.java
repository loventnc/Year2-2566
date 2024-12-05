//1.3
public class CheckString {
    public static void main(String[] args) {
        String a = "“OOP";
        String b = "Object-Oriented Programming";

        boolean compare_ab = (a == b);
        
        if (compare_ab == true) {
            System.out.println("Two strings are equal.");
        } else {
            System.out.println("Two strings are not equal.");
        }
    }
}
