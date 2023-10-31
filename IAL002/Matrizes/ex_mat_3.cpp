/*
Criar uma matriz [8][8] onde o programa irá carregar segundo:
casa 1 2 3 4 .. 8
valor 1 2 4 8 .. 128
O programa deverá calcular a soma de todos os elementos da matriz.
*/

#include <iostream>
#include <cmath>
using namespace std;

int main() {
    const int n = 8;
    double mat[n][n];
    double soma = 0;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (j == 0) {
                mat[i][j] = (i > 0) ? mat[i-1][n-1] * 2 : 1;
            }
            else {
                mat[i][j] = mat[i][j-1] * 2;
            }
            cout << " " << mat[i][j] << " ";
            soma += mat[i][j];
        }
        cout << endl;
    }
    cout << "Soma: " << soma;
    return 0;
}
