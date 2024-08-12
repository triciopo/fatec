package IED001.Recursividade.ED_REC_002.view;

import IED001.Recursividade.ED_REC_002.controller.VetController;

public class Vet {
    public static void main(String[] args) {
        VetController vetController = new VetController();

        int[] vetor = {4, 2, 7, 9, 6, 3};
        int L = vetor.length;

        int menorValor = vetController.find(vetor, L, vetor[L - 1]);
        System.out.println("O menor valor no vetor é: " + menorValor);
    }
}
