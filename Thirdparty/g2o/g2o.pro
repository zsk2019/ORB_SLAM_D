TARGET = g2o

TEMPLATE = lib

CONFIG += c++11

DESTDIR = $$_PRO_FILE_PWD_/lib
OBJECTS_DIR = $$_PRO_FILE_PWD_/build

SOURCES += \
    g2o/core/batch_stats.cpp \
    g2o/core/cache.cpp \
    g2o/core/estimate_propagator.cpp \
    g2o/core/factory.cpp \
    g2o/core/hyper_dijkstra.cpp \
    g2o/core/hyper_graph.cpp \
    g2o/core/hyper_graph_action.cpp \
    g2o/core/jacobian_workspace.cpp \
    g2o/core/marginal_covariance_cholesky.cpp \
    g2o/core/matrix_structure.cpp \
    g2o/core/optimizable_graph.cpp \
    g2o/core/optimization_algorithm.cpp \
#    g2o/core/optimization_algorithm_dogleg.cpp \
    g2o/core/optimization_algorithm_factory.cpp \
#    g2o/core/optimization_algorithm_gauss_newton.cpp \
    g2o/core/optimization_algorithm_levenberg.cpp \
    g2o/core/optimization_algorithm_with_hessian.cpp \
    g2o/core/parameter.cpp \
    g2o/core/parameter_container.cpp \
    g2o/core/robust_kernel.cpp \
    g2o/core/robust_kernel_factory.cpp \
    g2o/core/robust_kernel_impl.cpp \
    g2o/core/solver.cpp \
#    g2o/core/sparse_block_matrix_test.cpp \
    g2o/core/sparse_optimizer.cpp \
    g2o/stuff/property.cpp \
    g2o/stuff/string_tools.cpp \
    g2o/stuff/timeutil.cpp \
    g2o/stuff/os_specific.c \
    g2o/types/types_sba.cpp \
    g2o/types/types_seven_dof_expmap.cpp \
    g2o/types/types_six_dof_expmap.cpp

HEADERS += \
    g2o/core/base_binary_edge.h \
    g2o/core/base_binary_edge.hpp \
    g2o/core/base_edge.h \
    g2o/core/base_multi_edge.h \
    g2o/core/base_multi_edge.hpp \
    g2o/core/base_unary_edge.h \
    g2o/core/base_unary_edge.hpp \
    g2o/core/base_vertex.h \
    g2o/core/base_vertex.hpp \
    g2o/core/batch_stats.h \
    g2o/core/block_solver.h \
    g2o/core/block_solver.hpp \
    g2o/core/cache.h \
    g2o/core/creators.h \
#    g2o/core/eigen_types.h \
    g2o/core/estimate_propagator.h \
    g2o/core/factory.h \
    g2o/core/hyper_dijkstra.h \
    g2o/core/hyper_graph.h \
    g2o/core/hyper_graph_action.h \
    g2o/core/jacobian_workspace.h \
    g2o/core/linear_solver.h \
    g2o/core/marginal_covariance_cholesky.h \
#    g2o/core/matrix_operations.h \
    g2o/core/matrix_structure.h \
    g2o/core/openmp_mutex.h \
    g2o/core/optimizable_graph.h \
    g2o/core/optimization_algorithm.h \
#    g2o/core/optimization_algorithm_dogleg.h \
    g2o/core/optimization_algorithm_factory.h \
#    g2o/core/optimization_algorithm_gauss_newton.h \
    g2o/core/optimization_algorithm_levenberg.h \
    g2o/core/optimization_algorithm_property.h \
    g2o/core/optimization_algorithm_with_hessian.h \
    g2o/core/parameter.h \
    g2o/core/parameter_container.h \
    g2o/core/robust_kernel.h \
    g2o/core/robust_kernel_factory.h \
    g2o/core/robust_kernel_impl.h \
    g2o/core/solver.h \
    g2o/core/sparse_block_matrix.h \
    g2o/core/sparse_block_matrix.hpp \
    g2o/core/sparse_block_matrix_ccs.h \
#    g2o/core/sparse_block_matrix_diagonal.h \
    g2o/core/sparse_optimizer.h \
    g2o/stuff/color_macros.h \
    g2o/stuff/macros.h \
    g2o/stuff/misc.h \
    g2o/stuff/os_specific.h \
    g2o/stuff/property.h \
    g2o/stuff/string_tools.h \
    g2o/stuff/timeutil.h \
    g2o/types/se3_ops.h \
    g2o/types/se3_ops.hpp \
    g2o/types/se3quat.h \
#    g2o/types/sim3.h \
    g2o/types/types_sba.h \
    g2o/types/types_seven_dof_expmap.h \
    g2o/types/types_six_dof_expmap.h

macx{
INCLUDEPATH += /usr/local/include/eigen3
}

unix:!macx{
INCLUDEPATH += /usr/include/eigen3
}
