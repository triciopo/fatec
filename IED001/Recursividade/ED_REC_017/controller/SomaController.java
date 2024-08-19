// Criar uma aplicação em Java que tenha uma função recursiva que, recebendo um número inteiro (N), apresente a saída da somatória
// S = 1 + 1/2! + 1/3! + 1/4! + ... + 1/n!

package IED001.Recursividade.ED_REC_017.controller;

public class SomaController {
    public double soma(int n) {
        if (n == 1) {
            return 1;
        }
        return 1.0/fat(n) + soma(n-1);
    }

    private int fat(int n) {
        if (n == 1) {
            return 1;
        }
        return n * fat(n-1);
    }
}
