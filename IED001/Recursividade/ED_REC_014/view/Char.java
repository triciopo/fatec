package IED001.Recursividade.ED_REC_014.view;

import IED001.Recursividade.ED_REC_014.controller.CharController;

public class Char {
    public static void main(String[] args) {
        CharController charController = new CharController();
        String str = "teste";

        System.out.println("Nova string: " + charController.reverse(str, str.length()));
    }  
}
