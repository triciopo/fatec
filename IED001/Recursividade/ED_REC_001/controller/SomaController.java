// 1. Criar uma aplicação em Java que tenha uma função recursiva que calcule o somatório do N primeiros número NATURAIS (a função deve retornar zero para números negativos)

package IED001.Recursividade.ED_REC_001.controller;

public class SomaController {
    public int soma(int a) {
      if (a < 1) {
          return 0;
      }
      return a + soma(a-1);
    }
}
