#include <iostream>
#include <conio.h>
#include <cmath>
using namespace std;
int main()
{
setlocale(LC_ALL,"Rus");
	double N, M;
 cout << "I=NLog2M:" << endl;
 cout << "������� M: ";
 cin >> M;
 cout << "������� N: ";
 cin >> N;
 cout << "���-�� ����������: = " << N * log10( M ) / log10( 2 );

    getch();
    return 0;
}
