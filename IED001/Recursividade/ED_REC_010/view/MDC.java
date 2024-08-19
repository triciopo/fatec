package IED001.Recursividade.ED_REC_010.view;

import IED001.Recursividade.ED_REC_010.controller.MDCController;

public class MDC {
    public static void main(String[] args) {
        MDCController MDCController = new MDCController();
        
        System.out.println(MDCController.mdc(20, 24));
    }
}
