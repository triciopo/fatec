// Crie uma função recursiva que exiba o resultado da inversão de uma cadeia de caracteres
// (Ex.: entrada = teste ; saída = etset):
// Deve se utilizar a função SUBSTRING do Java

package IED001.Recursividade.ED_REC_014.controller;

public class CharController {
    public String reverse(String n, int l) {
        if (l == 1) {
            return n.substring(0, 1);
        }
        return n.substring(l-1, l) + reverse(n, l-1);
    }
}
