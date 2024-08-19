package IED001.Recursividade.ED_REC_006.view;

import IED001.Recursividade.ED_REC_006.controller.SomaController;

public class Soma {
    public static void main(String[] args) {
        SomaController somaController = new SomaController();

        System.out.println(somaController.soma(5, 3));
    }
}
