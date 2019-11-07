#include "BigNum.hh"
using namespace std;

void add128 (BigNum& ans, BigNum& left,  BigNum& right) {
	ans.d = left.d + right.d; // look up how to do carry ARM   ADD WITH CARRY ADC
	ans.c = left.c + right.c;// + carry;
	ans.b = left.b + right.b;// + carry;
	ans.a = left.a + right.a;// + carry;
}
