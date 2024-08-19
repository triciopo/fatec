// Criar uma aplicação em Java que tenha uma função recursiva que, recebendo um número inteiro, converta para binário. Entrada limitada a 2000.

package IED001.Recursividade.ED_REC_015.controller;

public class BinaryController {
    public String bin(long a) {
        if (a == 0) {
            return "0";
        } else if (a == 1) {
            return "1";
        }

        return bin(a / 2) + (a % 2);
    }
}
