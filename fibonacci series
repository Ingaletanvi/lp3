import java.util.*;

public class Fibonacci {

    public static int fibonacci(int n) {
        if (n <= 1) {
            return n;
        }
        return fibonacci(n - 1) + fibonacci(n - 2);
    }

    public static void main(String args[]) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter the position of the Fibonacci number you want to find: ");
        int n = scanner.nextInt();
        
        System.out.println("Fibonacci number at position " + n + " is: " + fibonacci(n));
        
        scanner.close();
    }
}
