package IED001.Recursividade.ED_REC_018.view;

import IED001.Recursividade.ED_REC_018.controller.SomaController;

public class Soma {
    public static void main(String[] args) {
        SomaController somaController = new SomaController();

        String a = String.valueOf(Integer.valueOf(234));
        char[] n = a.toCharArray();

        System.out.println("Soma: " + somaController.soma(n, n.length-1));
    }
}
