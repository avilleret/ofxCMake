

include( ${OF_DIRECTORY}/CMake/modules/addOnsInternal.cmake )

if( APPLE )
    include( ${OF_DIRECTORY}/CMake/modules/configApple.cmake )
    include( ${OF_DIRECTORY}/CMake/modules/openFrameworksApple.cmake )
endif()

# ===================== Library installation path ========
#install( FILES ${APP_NAME} LIBRARY DESTINATION ${OF_DIRECTORY}/CMake/libs )
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OF_DIRECTORY}/CMake/libs )
# ===================== App Properties ===================
set_target_properties(${APP_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

