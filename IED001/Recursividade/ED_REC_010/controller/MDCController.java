package IED001.Recursividade.ED_REC_010.controller;

public class MDCController {
    public int mdc(int a, int b) {
        if (a == b) {
            return a;
        }
        if (a > b) {
            return mdc(a - b, b);
        }
        return mdc(b, a);
    }
}
