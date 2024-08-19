// Criar uma aplicação em Java que tenha uma função recursiva que, recebendo um número inteiro de 10a 999999 e recebendo um 2o número inteiro (de 0 a 9), tenha uma função recursiva que apresente quantas vezes o 2o número aparece no primeiro.
// Exemplo1: 1o. Número = 523578; 2o. Número = 5; retorno aparece 2 vezes
// Exemplo2: 1o. Número = 836363; 2o. Número = 3; retorno aparece 3 vezes

package IED001.Recursividade.ED_REC_013.controller;

public class NumController {
    public int find(long a, int b) {
        if (a / 10 < 1) {
            return 0;
        }
        else if (a % 10 == b) {
            return 1 + find(a/10, b);
        }
        return find(a/10, b);
    }
}
