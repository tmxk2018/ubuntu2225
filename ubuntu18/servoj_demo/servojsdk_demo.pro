TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

unix{

    LIBS += -lpthread

    contains(QT_ARCH, i386){

        message("linux32bit")

        INCLUDEPATH += $$PWD/dependent/servojsdk/inc
        LIBS += -L$$PWD/dependent/servojsdk/lib/linux_x32 -lservojsdk

        INCLUDEPATH += $$PWD/dependent/robotsdk/inc
        LIBS += -L$$PWD/dependent/robotsdk/lib/linux_x32 -laubo_sdk

        LIBS += $$PWD/dependent/robotsdk/lib/linux_x32/libstdc++.so.6.0.28

        LIBS += -L$$PWD/dependent/robotsdk/lib/linux_x32 -laral

    }
    contains(QT_ARCH, x86_64){

        message("linux64bit")

        INCLUDEPATH += $$PWD/dependent/servojsdk/inc
        LIBS += -L$$PWD/dependent/servojsdk/lib/linux_x64 -lservojsdk

        INCLUDEPATH += $$PWD/dependent/robotsdk/inc
        LIBS += -L$$PWD/dependent/robotsdk/lib/linux_x64 -laubo_sdk

        LIBS += -L$$PWD/dependent/robotsdk/lib/linux_x64 -laral

    }
}


SOURCES += main.cpp \
    servojexample.cpp \
    servojkeyboardexample.cpp

HEADERS += \
    servojexample.h \
    servojkeyboardexample.h


