QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Step_06
TEMPLATE = app

# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

INCLUDEPATH += gui
INCLUDEPATH += HardwareSim

SOURCES += \
        Mapper/mapper_0.cpp \
        Mapper/mapper_1.cpp \
        Mapper/mapper_2.cpp \
        apu.cpp \
        HardwareSim/cartridge.cpp \
        HardwareSim/controller.cpp \
        HardwareSim/cpu.cpp \
        HardwareSim/cpu_ram.cpp \
        main.cpp \
        gui/mainwindow.cpp \
        HardwareSim/ppu.cpp \
        HardwareSim/ppu_bus.cpp

HEADERS += \
        Mapper/mapper_0.h \
        Mapper/mapper_1.h \
        Mapper/mapper_2.h \
        Mapper/mapper_base.h \
        apu.h \
        audio_map.h \
        HardwareSim/cartridge.h \
        colors_map.h \
        HardwareSim/controller.h \
        HardwareSim/cpu.h \
        HardwareSim/cpu_ram.h \
        gui/mainwindow.h \
        HardwareSim/ppu.h \
        HardwareSim/ppu_bus.h \
        total.h

FORMS += \
        gui/mainwindow.ui

# LIBS += \
#         -L/usr/lib/x86_64-linux-gnu -lopenal
LIBS += -lopenal

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
