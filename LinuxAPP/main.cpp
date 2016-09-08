#include <iostream>
#include "LogicProcessor.h"

using namespace std;

int main() {


    LogicProcessor * lp = new LogicProcessor();

    lp->ManageNetowrk();



    delete(lp);







    cout << "Hello, World!" << endl;
    return 0;
}