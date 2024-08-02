#include <QCoreApplication>
#include "wiringPi.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    wiringPiSetup();
    pinMode(3, OUTPUT);
    while(1){
        digitalWrite(3, LOW);
        delay(1000); //for(volatile uint64_t i=0;i<0xFFF;i++);
        digitalWrite(3, HIGH);
        delay(1000); //for(volatile uint64_t i=0;i<0xFFF;i++);
    }

    //return a.exec();
}
