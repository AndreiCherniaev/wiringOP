QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    $$PWD/../my_wiringOP_v5/wiringPi/wiringPi.h

unix:!macx: LIBS += -L$$PWD/../wiringOP_build_artifacts/ -lmy_wiringOP_v5

INCLUDEPATH += $$PWD/../my_wiringOP_v5/wiringPi
INCLUDEPATH += $$PWD/../wiringOP_build_artifacts
DEPENDPATH += $$PWD/../wiringOP_build_artifacts

unix:!macx: PRE_TARGETDEPS += $$PWD/../wiringOP_build_artifacts/libmy_wiringOP_v5.a
