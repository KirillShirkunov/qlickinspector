#-------------------------------------------------
#
# Project created by QtCreator 2017-05-27T14:28:58
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qlickinspector
TEMPLATE = lib

 CONFIG(debug, debug|release) {
     win32: TARGET = $$join(TARGET,,,d)
 }

DEFINES += QLICKINSPECTOR_LIBRARY

SOURCES += \
    unqlite.c \
    qieventcounter.cpp \
    qieventinterceptor.cpp \
    qikeyvaluestore.cpp \
    qiscreenshotgrabber.cpp \
    qiwidgetidgenerator.cpp \
    qiwidgethierarchyvisitor.cpp \
    qimaxeventcountevaluator.cpp \
    qiheatmaprenderer.cpp \
    qicolormapping.cpp \
    qlickinspector.cpp

HEADERS += \
    unqlite.h \
    qlickinspector_global.h \
    qieventcounter.h \
    qieventinterceptor.h \
    qikeyvaluestore.h \
    qiscreenshotgrabber.h \
    qiwidgetidgenerator.h \
    qiwidgethierarchyvisitor.h \
    qimaxeventcountevaluator.h \
    qiheatmaprenderer.h \
    qicolormapping.h \
    qlickinspector.h \
    qiqtincludefix.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
