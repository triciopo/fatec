package IED001.Recursividade.ED_REC_009.view;

import java.util.Scanner;

import IED001.Recursividade.ED_REC_009.controller.FatorialDController;

public class FatorialD {
    public static void main(String[] args) {
        FatorialDController fatorialDController = new FatorialDController();
        Scanner scan = new Scanner(System.in);

        int num;
        do {
            System.out.print("Insira um número impar e positivo: ");
            num = scan.nextInt();
        } while (num % 2 == 0 || num < 1);
        
        System.out.println(fatorialDController.fat(num));
    }
}
