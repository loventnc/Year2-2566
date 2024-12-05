public class ClassAndObject {
    private static int x = 5;
    private static int y = 2;
    public static void main(String[] args) {
        int x = 9;
        System.out.println(x);
        System.out.println(getX());
        System.out.println(showX());

        y = 1;
        System.out.println(y);
        System.out.println(getY());
        System.out.println(showY());

        int y = 11;
        System.out.println(y);
        System.out.println(getY());
        System.out.println(showY());
    }

    public static int getX() {
        return x;
    }
    
    public static int getY() {
        return y;
    }

    public static int showX() {
        int x = 7;
        return showX;
    }

    public static int showY() {
        int y = 12;
        return showY;
    }
}
