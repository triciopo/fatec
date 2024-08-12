package IED001.Recursividade.ED_REC_005.view;

import IED001.Recursividade.ED_REC_005.controller.SerieController;

public class Serie {
    public static void main(String[] args) {
        SerieController serieController = new SerieController();

        double N = serieController.serie(3);
        System.out.println("Resultado da série: " + N);
    }
}
