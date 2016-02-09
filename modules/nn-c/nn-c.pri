DEFINES += TRILIBRARY
SOURCES += \
	$$PWD/delaunay.c $$PWD/triangle.c \
	$$PWD/hash.c $$PWD/istack.c $$PWD/lpi.c $$PWD/minell.c \
	$$PWD/nnai.c $$PWD/nncommon-vulnerable.c $$PWD/nncommon.c $$PWD/nnpi.c \
	$$PWD/preader.c \

HEADERS += \
	$$PWD/delaunay.h \
	$$PWD/config.h \
	$$PWD/hash.h \
	$$PWD/istack.h \
	$$PWD/minell.h \
	$$PWD/nan.h \
	$$PWD/nn.h \
	$$PWD/nn_internal.h \
	$$PWD/nnconfig.h \
	$$PWD/preader.h \
	$$PWD/triangle.h \
	$$PWD/version.h
