package IED001.Recursividade.ED_REC_007.controller;

public class DivController {
    public int resto(int a, int b) {
        if (a < b) {
            return a;
        }
        return resto(a-b, b);
    }
}
