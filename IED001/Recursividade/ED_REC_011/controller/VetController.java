package IED001.Recursividade.ED_REC_011.controller;

public class VetController {
    public int[] vet(int[] a, int b, int c) {
        if (b < c) {
            return a;
        }
        int temp = a[c];
        a[c] = a[b];
        a[b] = temp;
        return vet(a, b-1, c+1);
    }   
}
