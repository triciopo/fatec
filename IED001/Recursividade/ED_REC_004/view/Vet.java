package IED001.Recursividade.ED_REC_004.view;

import IED001.Recursividade.ED_REC_004.controller.VetController;

public class Vet {
    public static void main(String[] args) {
        VetController vetController = new VetController();
        int[] vetor = {9, -2, -3, -1, 6, 4};

        int N = vetController.find(vetor, vetor.length);
        System.out.println("Total de números negativos: " + N);
    }
}
