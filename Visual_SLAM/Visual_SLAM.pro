TARGET = Visual_SLAM

TEMPLATE = lib

CONFIG += c++11

DESTDIR = $$_PRO_FILE_PWD_/lib
OBJECTS_DIR = $$_PRO_FILE_PWD_/build

SOURCES +=\
    src/Converter.cc \
    src/Frame.cc \
    src/FrameDrawer.cc \
    src/Initializer.cc \
    src/KeyFrame.cc \
    src/KeyFrameDatabase.cc \
    src/LocalMapping.cc \
    src/LoopClosing.cc \
    src/Map.cc \
    src/MapDrawer.cc \
    src/MapPoint.cc \
    src/Optimizer.cc \
    src/ORBextractor.cc \
    src/ORBmatcher.cc \
    src/PnPsolver.cc \
    src/Sim3Solver.cc \
    src/System.cc \
    src/Tracking.cc \
    src/Viewer.cc

HEADERS += \
    include/Converter.h \
    include/Frame.h \
    include/FrameDrawer.h \
    include/Initializer.h \
    include/KeyFrame.h \
    include/KeyFrameDatabase.h \
    include/LocalMapping.h \
    include/LoopClosing.h \
    include/Map.h \
    include/MapDrawer.h \
    include/MapPoint.h \
    include/Optimizer.h \
    include/ORBextractor.h \
    include/ORBmatcher.h \
    include/ORBVocabulary.h \
    include/PnPsolver.h \
    include/Sim3Solver.h \
    include/System.h \
    include/Tracking.h \
    include/Viewer.h

#-------------------------------------------------------------------------
# include path of source code
#-------------------------------------------------------------------------

INCLUDEPATH += $$_PRO_FILE_PWD_/include

#-------------------------------------------------------------------------
# 3rdparty include + lib (OpenCV)
#-------------------------------------------------------------------------
macx{
INCLUDEPATH += /usr/local/opencv343/include

LIBS += -L/usr/local/opencv343/lib/ -lopencv_calib3d \
                                    -lopencv_core \
                                    -lopencv_features2d \
                                    -lopencv_highgui \
                                    -lopencv_imgproc \
                                    -lopencv_imgcodecs
}
unix:!macx{
INCLUDEPATH += /usr/local/include

LIBS += -L/usr/local/lib -lopencv_calib3d \
                         -lopencv_core \
                         -lopencv_features2d \
                         -lopencv_highgui \
                         -lopencv_imgproc \
                         -lopencv_imgcodecs
}
#-------------------------------------------------------------------------
# 3rdparty include (Eigen)
#-------------------------------------------------------------------------
macx{
INCLUDEPATH += /usr/local/include/eigen3
}
unix:!macx{
INCLUDEPATH += /usr/include/eigen3
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

INCLUDEPATH += $$_PRO_FILE_PWD_/../Thirdparty/DBoW2

LIBS += -L$$_PRO_FILE_PWD_/../Thirdparty/DBoW2/lib -lDBoW2

#-------------------------------------------------------------------------
# 3rdparty include + lib (g2o)
#-------------------------------------------------------------------------

INCLUDEPATH += $$_PRO_FILE_PWD_/../Thirdparty/g2o

LIBS += -L$$_PRO_FILE_PWD_/../Thirdparty/g2o/lib -lg2o
