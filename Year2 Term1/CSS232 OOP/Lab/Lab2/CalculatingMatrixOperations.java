//2.5
public class CalculatingMatrixOperations {
    public static void main(String[] args){
        //Write a program for calculating Matrix Operations
        //Addition
        int[][] a = {
            {4, 7, 9, 8, 3},
            {2, 4, 7, 8, 1},
            {1, 1, 8, 1, 2},
            {0, 0, 1, 0, 4}
        };

        int[][] b = {
            {1, 2, 8, 4, 3},
            {4, 1, 8, 3, 1},
            {2, 1, 0, 0, 5},
            {1, 2, 1, 1, 7}
        };
        int rows = a.length;
        int cols = a[0].length;
        int[][] resultAddition = new int[rows][cols];
        
        System.out.println("Matrix Addition:");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                resultAddition[i][j] = a[i][j] + b[i][j];
                System.out.print(resultAddition[i][j] + " ");
            }
            System.out.println();
        }


        //Multiplication
        int[][] c = {
            {1, 2, 3},
            {4, 5, 6},
            {2, 3, 4}
        };
        
        int[][] d = {
            {1, 2, 3},
            {4, 5, 6},
            {2, 3, 4}
        };
        
        int size = c.length;
        int[][] resultMul = new int[size][size];
        System.out.println("\nMatrix Multiplication:");
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                for (int k = 0; k < size; k++) {
                    resultMul[i][j] += c[i][k] * d[k][j];
                }
                System.out.print(resultMul[i][j] + " ");
            }
            System.out.println();
        }
    }
}
