# -----------------------------------------------------------------
# --- Script to search for all the .cpp files in the chosen folder
# -----------------------------------------------------------------

file(   GLOB_RECURSE
        OFX_OPENCV_CPP
        "${OF_DIRECTORY}/addons/ofxOpenCv/*.cpp"
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY}/addons/ofxOpenCv/src"
        "${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/include"
        "${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/include/opencv"
        )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library(    ofxOpenCv
        STATIC
        ${OFX_OPENCV_CPP} )

# -----------------------------------------------------------------
# --- Setting a compiled lib
# -----------------------------------------------------------------

#TODO Libs for other OS (Win & Linux)
if( APPLE )
    set(    ofxOpenCVLib "${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/lib/opencv.a" )

        # prefered, so I can add all Libs in just one placeholder
#    list(APPEND OFX_ADDON_LIBS
#            ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/lib/osx/opencv.a
#            )

#    target_link_libraries(
#        ${APP_NAME}
#        "${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/lib/opencv.a" )
endif()