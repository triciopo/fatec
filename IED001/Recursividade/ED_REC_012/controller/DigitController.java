// Crie uma função recursiva que exiba a quantidade de dígitos de um número inteiro passado como parâmetro

package IED001.Recursividade.ED_REC_012.controller;

public class DigitController {
    public double digit(int a) {
        if (a < 10) {
            return 1;
        }

        return 1 + digit(a/10);
    }
}
