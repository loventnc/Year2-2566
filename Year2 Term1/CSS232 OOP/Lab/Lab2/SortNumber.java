//2.4
import java.util.Arrays;

public class SortNumber {
    public static void main(String[] args){
        //Write a program to arrange the numbers in ascending order
        int[] arr = {234, 6, 846, 85, 96, 198, 545, 12, 60, 34, 4, 87, 7, 1};
        Arrays.sort(arr);
        
        System.out.println("Numbers in ascending order:");
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }
}
