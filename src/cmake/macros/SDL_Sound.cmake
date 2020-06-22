MACRO(CONFIGURE_SDL_SOUND _NAME_TARGET)

    FIND_PACKAGE(SDL_mixer)

    IF(SDL_MIXER_FOUND)

        TARGET_LINK_LIBRARIES(${_NAME_TARGET} PRIVATE ${SDL_MIXER_LIBRARIES})
        TARGET_INCLUDE_DIRECTORIES(${_NAME_TARGET} PRIVATE ${SDL_MIXER_INCLUDE_DIRS})
        TARGET_COMPILE_DEFINITIONS(${_NAME_TARGET} PRIVATE -D SOUND_SDL)

        MESSAGE(STATUS "Support to Sound with SDL Mixer - Ready")

    ELSE()

        MESSAGE(FATAL_ERROR "Support to Sound with SDL Mixer - Fail")

    ENDIF()

ENDMACRO()