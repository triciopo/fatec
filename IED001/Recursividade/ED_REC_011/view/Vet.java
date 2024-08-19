package IED001.Recursividade.ED_REC_011.view;

import java.util.Arrays;

import IED001.Recursividade.ED_REC_011.controller.VetController;

public class Vet {
    public static void main(String[] args) {
        VetController VetController = new VetController();
        int[] vet = new int[] {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

        System.out.println(Arrays.toString(VetController.vet(vet, vet.length - 1, 0)));
    }  
}
