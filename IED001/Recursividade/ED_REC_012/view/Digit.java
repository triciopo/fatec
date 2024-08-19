package IED001.Recursividade.ED_REC_012.view;

import IED001.Recursividade.ED_REC_012.controller.DigitController;

public class Digit {
    public static void main(String[] args) {
        DigitController digitController = new DigitController();

        System.out.println("Qnt de dígitos: " + digitController.digit(34569));
    }
}
