// Crie uma função recursiva que exiba o total de elementos negativos de um vetor de inteiros, de N posições, passado como parâmetro.

package IED001.Recursividade.ED_REC_004.controller;

public class VetController {
    public int find(int[] vet, int tamanho) {
        if (tamanho == 0) {
            return 0;
        }

        if (vet[tamanho - 1] < 0) {
            return 1 + find(vet, tamanho - 1);
        }

        return find(vet, tamanho - 1);
    }
}
