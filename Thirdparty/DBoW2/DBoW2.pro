TARGET = DBoW2

TEMPLATE = lib

CONFIG += c++11

DESTDIR = $$_PRO_FILE_PWD_/lib
OBJECTS_DIR = $$_PRO_FILE_PWD_/build

SOURCES += \
    DBoW2/BowVector.cpp \
    DBoW2/FeatureVector.cpp \
    DBoW2/FORB.cpp \
    DBoW2/ScoringObject.cpp \
    DUtils/Random.cpp \
    DUtils/Timestamp.cpp

HEADERS += \
    DBoW2/BowVector.h \
    DBoW2/FClass.h \
    DBoW2/FeatureVector.h \
    DBoW2/FORB.h \
    DBoW2/ScoringObject.h \
    DBoW2/TemplatedVocabulary.h \
    DUtils/Random.h \
    DUtils/Timestamp.h

macx{
INCLUDEPATH += /usr/local/opencv343/include

LIBS += -L/usr/local/opencv343/lib/ -lopencv_core
}

unix:!macx{
INCLUDEPATH += /usr/local/include

LIBS += -L/usr/local/lib/ -lopencv_core
}
