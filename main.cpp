// Salvador Pacheco Franco
#include <iostream>

using namespace std;

int main()
{
    int fibo, ant=0, act=1, sig;
    cout << "Ingrese hasta donde quiere que la serie termine" << endl;
    cin>>fibo;
    cout << endl;
    for(int a =0; a<fibo; a++){
        cout<<act<<endl;
        sig=act+ant;
        ant=act;
        act=sig;
    }
    return 0;
}
