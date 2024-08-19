package IED001.Recursividade.ED_REC_015.view;

import IED001.Recursividade.ED_REC_015.controller.BinaryController;

public class Binary {
    public static void main(String[] args) {
        BinaryController binaryController = new BinaryController();

        System.out.println("Qnt de vezes: " + binaryController.bin(35));
    }
}
