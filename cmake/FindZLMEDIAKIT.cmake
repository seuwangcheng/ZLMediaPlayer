find_path(ZLMEDIAKIT_INCLUDE_DIR
  NAMES Rtsp/Rtsp.h
  PATHS
  ${PROJECT_SOURCE_DIR}/../ZLMediaKit/src
  $ENV{HOME}/ZLMediaKit/include)

find_library(ZLMEDIAKIT_LIBRARY
  NAMES ZLMediaKit
  PATHS
  ${PROJECT_SOURCE_DIR}/../ZLMediaKit/build/lib
  $ENV{HOME}/ZLMediaKit/lib)

set(ZLMEDIAKIT_LIBRARIES ${ZLMEDIAKIT_LIBRARY})
set(ZLMEDIAKIT_INCLUDE_DIRS ${ZLMEDIAKIT_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(ZLMEDIAKIT DEFAULT_MSG ZLMEDIAKIT_LIBRARY ZLMEDIAKIT_INCLUDE_DIR)

