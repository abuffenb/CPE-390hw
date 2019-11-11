#include <iostream>
using namespace std;

extern void addelement(int X[],int len);

	int main() {

	int X[]={7,2,1};
	int len=3;

	addelement(X, len);

	cout << X[0]," ", X[1], " ", X[2];

	return(0); }
