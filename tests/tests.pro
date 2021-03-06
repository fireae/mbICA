# -------------------------------------------------
# Project created by QtCreator 2012-01-04T21:23:34
# -------------------------------------------------
QT -= core \
    gui

TARGET = unit_tests

TEMPLATE = app
CONFIG += console

SOURCES += \
    test.cpp \
    utils_test.cpp \
    policies_test.cpp \
    nonlinearity_test.cpp \
    icaseparator_test.cpp \
    fastica_test.cpp

LIBS += -lmbica
unix:LIBS += -larmadillo -lboost_unit_test_framework
win32:LIBS += ../lib/blas_win32_MT.lib ../lib/lapack_win32_MT.lib ../lib/libboost_unit_test_framework-mgw34-mt.lib

INCLUDEPATH += ../include
QMAKE_LIBDIR += ../lib

DEFINES += ARMA_USE_LAPACK \
    BOOST_PARAMETER_MAX_ARITY=7
