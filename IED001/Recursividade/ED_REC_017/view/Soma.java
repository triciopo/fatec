package IED001.Recursividade.ED_REC_017.view;

import IED001.Recursividade.ED_REC_017.controller.SomaController;

public class Soma {
    public static void main(String[] args) {
        SomaController somaController = new SomaController();

        System.out.println("Soma: " + somaController.soma(4));
    }
}
