// Criar uma aplicação em Java que tenha uma função recursiva que, recebendo um número inteiro (N), apresente a saída da somatória
// S = 1 + 1/2 + 1/3 + 1/4 + ... + 1/N

package IED001.Recursividade.ED_REC_005.controller;

public class SerieController {
    public double serie(int a) {
        if (a == 1) {
            return 1;
        }

        return (1.0/a) + serie(a - 1);
    }
}
