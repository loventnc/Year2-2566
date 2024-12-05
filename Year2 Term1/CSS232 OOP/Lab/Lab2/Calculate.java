//2.3
public class Calculate
{
    public static void main(String[] args)
    {
        //Find the length of array
        System.out.println("Find the length of array");
        int[] a1 = new int[10];
        int[] a2 = {3, 5, 7, 1, 8, 99, 44, -10};
        int[] a3 = {4, 3, 2, 1};
        
        System.out.println("Length of a1: " + a1.length);
        System.out.println("Length of a2: " + a2.length);
        System.out.println("Length of a3: " + a3.length);


        System.out.println();
        //Demonstrate a two-dimensional array
        System.out.println("Demonstrate a two-dimensional array");
        int[][] matrix = new int[3][3];

        int value = 0;
        for (int row = 0; row < 3; row++) {
            for (int col = 0; col < 3; col++) {
                matrix[row][col] = value++;
            }
        }
        System.out.println("Martix[3][3]: ");
        for (int row = 0; row < 3; row++) {
            for (int col = 0; col < 3; col++) {
                System.out.print(matrix[row][col] + " ");
            }
        System.out.println();
        }
    }
}