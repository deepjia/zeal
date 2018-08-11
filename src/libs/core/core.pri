ZEAL_LIB_NAME = Core

QT += concurrent network webkit widgets

unix:!macx {
    CONFIG += link_pkgconfig
    PKGCONFIG += libarchive
}
win32: {
    LIBS += -larchive_static -lz
}
macx: {
    INCLUDEPATH += /usr/local/Cellar/libarchive/3.3.2/include
    LIBS += -L/usr/local/Cellar/libarchive/3.3.2/lib -larchive
}
