TEMPLATE = subdirs

SUBDIRS += \
    Thirdparty/DBoW2 \
    Thirdparty/g2o \
    Visual_SLAM \
    Examples/Monocular/mono_tum \
    Examples/Monocular/mono_euroc \
    Examples/Monocular/mono_kitti \
#    Examples/RGBD/rgbd_tum \
#    Examples/Stereo/stereo_euroc \
#    Examples/Stereo/stereo_kitti

CONFIG += ordered
