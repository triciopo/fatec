// Crie uma função recursiva que exiba o resultado do fatorial de um número (Pela limitação da
// recursividade, o número de entrada deverá ser baixo para não dar estouro(limite de entrada = 12)):

package IED001.Recursividade.ED_REC_003.controller;

public class FatorialController {
    public int fat(int a) {
        if (a < 1) {
            return 1;
        }
        return a * fat(a-1);
      }
}
