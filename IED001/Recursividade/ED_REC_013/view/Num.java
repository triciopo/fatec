package IED001.Recursividade.ED_REC_013.view;

import IED001.Recursividade.ED_REC_013.controller.NumController;

public class Num {
    public static void main(String[] args) {
        NumController numController = new NumController();

        System.out.println("Qnt de vezes: " + numController.find(1434546344, 4));
    } 
}
