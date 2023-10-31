/*
Criar uma matriz [8][8] inteiro e o programa irá carregar segundo:
1   1   1   1   1   1   1   1   
1   2   2   2   2   2   2   1   
1   2   3   3   3   3   2   1   
1   2   3   4   4   3   2   1   
1   2   3   4   4   3   2   1   
1   2   3   3   3   3   2   1   
1   2   2   2   2   2   2   1   
1   1   1   1   1   1   1   1   
*/
#include <iostream>
using namespace std;

int main() {
    const int n = 8;
    int mat[n][n];

    for (int i = 0; i < n; i++) {
        for (int j = i; j < n - i; j++) {
            for (int k = i; k < n - i; k++) {
                mat[j][k] = i + 1;
            }
        }
    }
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << mat[i][j] << "  ";
        }
        cout << endl;
    }
}