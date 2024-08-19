// Considere a série de Fibonacci:
//  1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
// Escrever uma função recursiva que, dado uma posição da série, a função retorne seu valor.
// Entrada limitada a 20 (Condição que deve ser testada na Main da aplicação).

package IED001.Recursividade.ED_REC_016.controller;

public class FibonacciController {
    public int fib(int a) {
        if (a == 1 || a == 2) {
            return 1;
        }
        return fib(a - 1) + fib(a - 2);
    }
}
