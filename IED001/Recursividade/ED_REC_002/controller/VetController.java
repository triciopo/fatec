// Criar uma aplicação em Java que tenha uma função recursiva que, recebendo um vetor de inteiros, o
// tamanho do vetor e o valor da última posição do vetor como o primeiro menor valor, retorne o menor valor contido neste vetor.

package IED001.Recursividade.ED_REC_002.controller;

public class VetController {
    public int find(int[] vet, int tamanho, int menorOAtual) {
        if (tamanho == 0) {
            return menorOAtual;
        }

        if (vet[tamanho - 1] < menorOAtual) {
            menorOAtual = vet[tamanho - 1];
        }

        return find(vet, tamanho - 1, menorOAtual);
    }
}