public class Decision4 {
    public static void main(String[] args) {
        int x = 100;
        if (x < 50) {
            int y = ++x; 
            System.out.println(y);
        } else {
            int y = --x;
            System.out.println(y);
        }
    }
}
