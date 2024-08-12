package IED001.Recursividade.ED_REC_003.view;

import IED001.Recursividade.ED_REC_003.controller.FatorialController;

public class Fatorial {
    public static void main(String[] args) {
        FatorialController fatorialController = new FatorialController();

        System.out.println(fatorialController.fat(5));
    }
}
