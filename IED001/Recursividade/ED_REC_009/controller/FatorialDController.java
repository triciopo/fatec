package IED001.Recursividade.ED_REC_009.controller;

public class FatorialDController {
    public int fat(int a) {
        if (a <= 1) {
            return 1;
        }
        if (a % 2 != 0) {
            return a * fat(a - 1);
        }
        return fat(a-1);
    }
}
