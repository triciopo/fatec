package IED001.Recursividade.ED_REC_008.controller;

public class VetController {
    public int soma(int[] a, int b) {
        if (b < 0) {
            return 0;
        }
        if (a[b] % 2 == 0) {
            return 1 + soma(a, b-1);
        }
        return soma(a, b-1);
    }
}
