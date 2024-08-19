// Escreva uma função recursiva que calcule a soma dos dígitos de um número inteiro.
// Por exemplo, se a entrada for 123, portanto 1+2+3, logo, a saída deverá ser 6.

package IED001.Recursividade.ED_REC_018.controller;

public class SomaController {
    public int soma(char[] a, int n) {
        if (n < 0) {
            return 0;
        }
        return Integer.parseInt(String.valueOf(a[n])) + soma(a, n - 1);
    }
}
