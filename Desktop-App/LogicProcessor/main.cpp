#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.setWindowTitle("Processor Logic Configuraiton Tools ");
    w.show();

    return a.exec();
}
