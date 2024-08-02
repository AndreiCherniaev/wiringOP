CONFIG -= qt

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    my_wiringop_v5.cpp \
    wiringPi/OrangePi.c \
    wiringPi/piHiPri.c \
    wiringPi/softPwm.c \
    wiringPi/wiringPi.c

HEADERS += \
    my_wiringop_v5.h \
    version.h \
    wiringPi/OrangePi.h \
    wiringPi/softPwm.h \
    wiringPi/wiringPi.h

DEFINES += CONFIG_ORANGEPI
DEFINES += CONFIG_ORANGEPI_4

DESTDIR = $$PWD/../wiringOP_build_artifacts

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
