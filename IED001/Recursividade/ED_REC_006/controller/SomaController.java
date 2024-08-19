package IED001.Recursividade.ED_REC_006.controller;

public class SomaController {
    public int soma(int a, int b) {
        if (b < 1) {
            return b;
        }
        return a + soma(a, b-1);
    }
}