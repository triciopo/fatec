package IED001.Recursividade.ED_REC_016.view;

import java.util.Scanner;

import IED001.Recursividade.ED_REC_016.controller.FibonacciController;

public class Fibonacci {
    public static void main(String[] args) {
        FibonacciController fibonacciController = new FibonacciController();
        Scanner scan = new Scanner(System.in);

        int val;
        do {
            System.out.print("Insira um número: ");
            val = scan.nextInt();
        } while (val > 20 || val < 1);

        System.out.println("Resultado: " + fibonacciController.fib(val));
    }
}
