TEMPLATE = lib
TARGET = MyQMLLauncher
QT += core qml quick multimedia
CONFIG += plugin c++11

TARGET = $$qtLibraryTarget($$TARGET)
uri = org.dvkbuntu.dvkmenulauncher

# Input
SOURCES += \
        myqmllauncher_plugin.cpp \
        qlauncher.cpp \
        global.cpp

HEADERS += \
        myqmllauncher_plugin.h \
        qlauncher.h \
        global.h

DISTFILES = qmldir \
    dvkmenu/contents/code/tools.js \
    dvkmenu/metadata.desktop \
    dvkmenu/dvkmenu.qmlproject \
    dvkmenu/contents/config/main.xml \
    dvkmenu/COPYING \
    dvkmenu/contents/config/config.qml \
    dvkmenu/contents/ui/ActionMenu.qml \
    dvkmenu/contents/ui/CompactRepresentation.qml \
    dvkmenu/contents/ui/ConfigGeneral.qml \
    dvkmenu/contents/ui/ItemGridDelegate.qml \
    dvkmenu/contents/ui/ItemGridView.qml \
    dvkmenu/contents/ui/main.qml \
    dvkmenu/contents/ui/MenuRepresentation.qml

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir
unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir
}
