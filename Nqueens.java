import java.util.Scanner;

public class NQueens {
    static int N;

    static void printSolution(int[][] board) {
        for (int[] row : board) {
            for (int cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }

    static boolean isSafe(int[][] board, int row, int col) {
        for (int i = 0; i < col; i++) // Check row on left side
            if (board[row][i] == 1)
                return false;
        
        for (int i = row, j = col; i >= 0 && j >= 0; i--, j--) // Check upper diagonal
            if (board[i][j] == 1)
                return false;
        
        for (int i = row, j = col; i < N && j >= 0; i++, j--) // Check lower diagonal
            if (board[i][j] == 1)
                return false;
        
        return true;
    }

    static boolean solveNQUtil(int[][] board, int col) {
        if (col >= N)
            return true;
        
        for (int i = 0; i < N; i++) {
            if (isSafe(board, i, col)) {
                board[i][col] = 1;
                if (solveNQUtil(board, col + 1))
                    return true;
                board[i][col] = 0; // Backtrack
            }
        }
        
        return false;
    }

    static boolean solveNQ() {
        int[][] board = new int[N][N];
        
        if (!solveNQUtil(board, 0)) {
            System.out.println("Solution doesn't exist");
            return false;
        }
        
        printSolution(board);
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the size of the board (N): ");
        N = scanner.nextInt();
        scanner.close();
        
        solveNQ();
    }
}
