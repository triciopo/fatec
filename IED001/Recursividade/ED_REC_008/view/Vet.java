package IED001.Recursividade.ED_REC_008.view;

import IED001.Recursividade.ED_REC_008.controller.VetController;

public class Vet {
    public static void main(String[] args) {
        int[] vet = new int[] {8, 4, 5, 6, 8, 8, 9, 10, 11};
        VetController vetController = new VetController();

        System.out.println(vetController.soma(vet, vet.length-1));
    }   
}
