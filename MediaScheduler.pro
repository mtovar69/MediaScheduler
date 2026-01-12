QT += core gui charts multimedia multimediawidgets
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# =====================================================
# Sources
# =====================================================

SOURCES += \
    NDILib.cpp \
    cpuwidget.cpp \
    dbconnection.cpp \
    eventgantt.cpp \
    eventganttitem.cpp \
    eventmanager.cpp \
    eventrecorder.cpp \
    eventview.cpp \
    helpbrowser.cpp \
    main.cpp \
    mainwindow.cpp \
    mediaplayer.cpp \
    memorywidget.cpp \
    monitor.cpp \
    monitorview.cpp \
    ndisignalsfinder.cpp \
    scheduler.cpp \
    signalcontroller.cpp \
    signalgenerator.cpp \
    storagewidget.cpp \
    streamjob.cpp \
    sysinfo.cpp \
    sysinfowidget.cpp \
    testsignal.cpp \
    videowidget.cpp

HEADERS += \
    IDBConecction.h \
    NDILib.h \
    cpuwidget.h \
    dbconnection.h \
    eventgantt.h \
    eventganttitem.h \
    eventitem.h \
    eventmanager.h \
    eventrecorder.h \
    eventview.h \
    helpbrowser.h \
    mainwindow.h \
    mediaplayer.h \
    memorywidget.h \
    monitor.h \
    monitorview.h \
    ndisignalsfinder.h \
    scheduler.h \
    signalcontroller.h \
    signalgenerator.h \
    storagewidget.h \
    streamjob.h \
    sysinfo.h \
    sysinfowidget.h \
    testsignal.h \
    videowidget.h

FORMS += \
    eventmanager.ui \
    eventview.ui \
    mainwindow.ui \
    mediaplayer.ui \
    monitorview.ui \
    signalgenerator.ui

# =====================================================
# Platform-specific
# =====================================================

windows {
    SOURCES += sysinfowindows.cpp
    HEADERS += sysinfowindows.h
}

# =====================================================
# Resources & Translations
# =====================================================

RESOURCES += res.qrc
RC_ICONS = scheduler.ico

TRANSLATIONS += MediaScheduler_en_US.ts
CONFIG += lrelease
CONFIG += embed_translations

# =====================================================
# NDI SDK (required)
# =====================================================

NDI_SDK_DIR = $$(NDI_SDK_DIR)

isEmpty(NDI_SDK_DIR) {
    error("NDI_SDK_DIR environment variable is not set. Please install the NDI SDK and set NDI_SDK_DIR.")
}

INCLUDEPATH += $$NDI_SDK_DIR/Include
LIBS += -L$$NDI_SDK_DIR/Lib/x64 -lProcessing.NDI.Lib.x64

# =====================================================
# Deployment defaults
# =====================================================

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
