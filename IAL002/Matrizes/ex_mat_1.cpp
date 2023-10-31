/*
Criar e carregar uma matriz [4][3] inteiro com quantidade de produtos
vendidos em 4 semanas. Calcular e exibir:
a. A quantidade de cada produto vendido no mês;
b. A quantidade de produtos vendidos por semana;
c. O total de produtos vendidos no mês.
*/

#include <iostream>
using namespace std;

int main() {
    int mat[4][3] = 
    {
        {1, 2, 3}, 
        {4, 5, 6}, 
        {7, 8, 9}, 
        {5, 4, 3}
    };
    int total_mes_cada[3] = {0, 0, 0};
    int total_semana;
    int total_mes_geral = 0;
    
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 3; j++) {
            total_mes_cada[j] += mat[i][j];
            total_mes_geral += mat[i][j];
            total_semana += mat[i][j];
        }
        cout << "Total vendido na semana " << i+1 << ": " << total_semana << endl;
        total_semana = 0;
    }
    cout << endl;
    for (int i = 0; i < 3; i++) {
        cout << "Produto " << i+1 << " vendido no mês: " << total_mes_cada[i] << endl;
    }
    cout << endl;
    cout << "Total vendido no mês: " << total_mes_geral << endl;
    return 0;
}