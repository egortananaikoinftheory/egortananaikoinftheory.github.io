#include <iostream>
#include <conio.h>
#include <cmath>
using namespace std;
int main()
{
setlocale(LC_ALL,"Rus");
	double N, M;
 cout << "I=NLog2M:" << endl;
 cout << "Введите M: ";
 cin >> M;
 cout << "Введите N: ";
 cin >> N;
 cout << "Кол-во информации: = " << N * log10( M ) / log10( 2 );

    getch();
    return 0;
}
