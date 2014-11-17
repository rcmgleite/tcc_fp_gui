# Add more folders to ship with the application, here
folder_01.source = qml/gui_tcc
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH = /qml/gui_tcc

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    core.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick1applicationviewer/qtquick1applicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    core.hpp

QMAKE_CXXFLAGS += -std=c++11

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../core/tcc_fp/Debug/release/ -lTCC\ FP
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../core/tcc_fp/Debug/debug/ -lTCC\ FP
else:unix: LIBS += -L$$PWD/../../core/tcc_fp/Debug/ -lTCC\ FP

INCLUDEPATH += $$PWD/../../core/tcc_fp/src
DEPENDPATH += $$PWD/../../core/tcc_fp/Debug
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../tcc_fp/Debug/debug/ -lTCC\ FP
else:unix: LIBS += -L$$PWD/../tcc_fp/Debug/ -lTCC\ FP

OTHER_FILES += \
    qml/gui_tcc/ExecutionScreen.qml
