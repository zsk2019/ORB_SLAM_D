TARGET = stereo_euroc

TEMPLATE = app

CONFIG += c++11 console
DEFINES += COMPILEDWITHC11

DESTDIR = $$_PRO_FILE_PWD_/build
OBJECTS_DIR = $$_PRO_FILE_PWD_/build

QT += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

SOURCES += \
    stereo_euroc.cc

#-------------------------------------------------------------------------
# select compile platform
#-------------------------------------------------------------------------
macx{
DEFINES += USE_MAC_SYSTEM
}
#-------------------------------------------------------------------------
# 3rdparty include + lib (OpenCV)
#-------------------------------------------------------------------------
macx{
INCLUDEPATH += /usr/local/Cellar/opencv/3.4.1_4/include

LIBS += -L/usr/local/Cellar/opencv/3.4.1_4/lib/ -lopencv_calib3d \
                                                -lopencv_core \
                                                -lopencv_features2d \
                                                -lopencv_highgui \
                                                -lopencv_imgproc \
                                                -lopencv_imgcodecs \
                                                -lopencv_line_descriptor
}
unix:!macx{
INCLUDEPATH += /usr/local/include

LIBS += -L/usr/local/lib -lopencv_calib3d \
                         -lopencv_core \
                         -lopencv_features2d \
                         -lopencv_highgui \
                         -lopencv_imgproc \
                         -lopencv_imgcodecs \
                         -lopencv_line_descriptor
}
#-------------------------------------------------------------------------
# 3rdparty include (Eigen)
#-------------------------------------------------------------------------
macx{
INCLUDEPATH += /usr/local/include/eigen3
}
unix:!macx{
INCLUDEPATH += /usr/local/include/eigen3
}
#-------------------------------------------------------------------------
# 3rdparty include + lib (Pangolin)
#-------------------------------------------------------------------------
macx{
INCLUDEPATH += /usr/local/include/pangolin \
               /usr/local/Cellar/glew/2.1.0/include

LIBS += -L/usr/local/lib -lpangolin \
        -L/usr/local/Cellar/glew/2.1.0/lib -lGLEW \
        -L/System/Library/Frameworks/ImageIO.framework/Versions/A/Resources -lJPEG
}
unix:!macx{
INCLUDEPATH += /usr/local/include/pangolin \
               /usr/include

LIBS += -L/usr/local/lib -lpangolin \
        -L/usr/lib/x86_64-linux-gnu -lGLEW
}
#-------------------------------------------------------------------------
# 3rdparty include + lib (DBoW2)
#-------------------------------------------------------------------------

INCLUDEPATH += $$_PRO_FILE_PWD_/../../../Thirdparty/DBoW2

LIBS += -L$$_PRO_FILE_PWD_/../../../Thirdparty/DBoW2/lib -lDBoW2

#-------------------------------------------------------------------------
# 3rdparty include + lib (g2o)
#-------------------------------------------------------------------------

INCLUDEPATH += $$_PRO_FILE_PWD_/../../../Thirdparty/g2o

LIBS += -L$$_PRO_FILE_PWD_/../../../Thirdparty/g2o/lib -lg2o

#-------------------------------------------------------------------------
# 3rdparty include + lib (SLAM)
#-------------------------------------------------------------------------

INCLUDEPATH += $$_PRO_FILE_PWD_/../../../Visual_SLAM/include

LIBS += -L$$_PRO_FILE_PWD_/../../../Visual_SLAM/lib -lVisual_SLAM
