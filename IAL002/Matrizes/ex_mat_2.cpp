/*
Criar e carregar uma matriz [4][4] com valores aleatórios, sendo que a
diagonal principal terá seus dados carregados no programa segundo:

1
  4
    16
       64

*/
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int mat[4][4];
    srand (time(NULL));
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            mat[i][j] = (i == j) ? pow(4, i) : rand() % 9;
            cout << " " << mat[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}
