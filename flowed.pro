
QT += core \
    gui \
    widgets

TARGET = flowed
TEMPLATE = app

SOURCES += main.cpp \
    femainwindow.cpp \
    fe_flowelement.cpp \
    fe_flowelementhandle.cpp \
    # fe_glwidget.cpp \
    fe_gradientelement.cpp \
    draw_gouraud_triangle.cpp \
    qarrowcue.cpp \
    draw_item_along_bezier.cpp \
    fe_beziercurve.cpp
HEADERS += femainwindow.h \
    fe_flowelement.h \
    fe_flowelementhandle.h \
    # fe_glwidget.h \
    fe_gradientelement.h \
    fe_element.h \
    qarrowcue.h \
    fe_beziercurve.h
FORMS += femainwindow.ui
ICONS = flowed.icns

INCLUDEPATH += nn-c/
LIBS +=

RESOURCES += \
    flowed.qrc

include(modules/nn-c/nn-c.pri)
include(modules/akima/akima.pri)

debug: DBG = dgb-
else: DBG = rel-

OBJECTS_DIR = workdir/$$DBG$$[QMAKE_SPEC]/obj
MOC_DIR = workdir/$$DBG$$[QMAKE_SPEC]/ui
UI_DIR = workdir/$$DBG$$[QMAKE_SPEC]/ui
RCC_DIR = workdir/$$DBG$$[QMAKE_SPEC]/ui

DESTDIR = bin