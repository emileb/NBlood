LOCAL_PATH := $(call my-dir)/source

include $(CLEAR_VARS)

LOCAL_MODULE    := nblood_dev

LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/glad/include \
$(LOCAL_PATH)/build/include \
$(LOCAL_PATH)/audiolib/include \
$(LOCAL_PATH)/mact/include \
$(LOCAL_PATH)/blood/src \
$(LOCAL_PATH)/mimalloc/include \
$(LOCAL_PATH)/libxmp-lite/include \
$(LOCAL_PATH)/imgui/include \
$(LOCAL_PATH)/libsmackerdec/include \
$(SDL_INCLUDE_PATHS) \
$(TOP_DIR)/Clibs_OpenTouch \
$(TOP_DIR)/Clibs_OpenTouch\raze \
$(TOP_DIR)/MobileTouchControls  \
$(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include  \


LOCAL_CFLAGS := -O1 -Wno-ignored-attributes -DNOONE_EXTENSIONS=1 -DRENDERTYPESDL=1 -DUSE_OPENGL -DHAVE_XMP -DHAVE_VORBIS -DHAVE_FLAC -DENGINE_NAME=\"eduke32\" -DEDUKE32 -w -Wno-format  -Wformat=0 -Wno-format-security
LOCAL_CPPFLAGS := -fexceptions
#-DUSE_LIBVPX

engine_objs := \
    build/src/2d.cpp \
    build/src/baselayer.cpp \
    build/src/cache1d.cpp \
    build/src/clip.cpp \
    build/src/colmatch.cpp \
    build/src/common.cpp \
    build/src/communityapi.cpp \
    build/src/compat.cpp \
    build/src/cpuid.cpp \
    build/src/crc32.cpp \
    build/src/defs.cpp \
    build/src/dxtfilter.cpp \
    build/src/enet.cpp \
    build/src/engine.cpp \
    build/src/fix16.cpp \
    build/src/hash.cpp \
    build/src/hightile.cpp \
    build/src/klzw.cpp \
    build/src/kplib.cpp \
    build/src/lz4.c \
    build/src/md4.cpp \
    build/src/mhk.cpp \
    build/src/miniz.c \
    build/src/miniz_tdef.c \
    build/src/miniz_tinfl.c \
    build/src/mmulti.cpp \
    build/src/mutex.cpp \
    build/src/osd.cpp \
    build/src/palette.cpp \
    build/src/pngwrite.cpp \
    build/src/polymost.cpp \
    build/src/polymost1Frag.glsl \
    build/src/polymost1Vert.glsl \
    build/src/pragmas.cpp \
    build/src/rev.cpp \
    build/src/screenshot.cpp \
    build/src/screentext.cpp \
    build/src/scriptfile.cpp \
    build/src/sjson.cpp \
    build/src/smalltextfont.cpp \
    build/src/softsurface.cpp \
    build/src/texcache.cpp \
    build/src/textfont.cpp \
    build/src/tiles.cpp \
    build/src/timer.cpp \
    build/src/vfs.cpp \
    build/src/xxhash.c \
    build/src/glsurface.cpp \
    build/src/glbuild.cpp \
    build/src/voxmodel.cpp \
    build/src/mdsprite.cpp \
    build/src/tilepacker.cpp \
    build/src/a-c.cpp \
    build/src/sdlayer.cpp \
    build/src/smmalloc.cpp \
    build/src/smmalloc_tls.cpp \
    build/src/smmalloc_generic.cpp \
 	build/src/loguru.cpp


glad_objs := \
    glad/src/glad.c \

mact_objs := \
    mact/src/animlib.cpp \
    mact/src/control.cpp \
    mact/src/joystick.cpp \
    mact/src/keyboard.cpp \
    mact/src/scriplib.cpp \


audiolib_objs := \
    audiolib/src/driver_adlib.cpp \
    audiolib/src/driver_sf2.cpp \
    audiolib/src/drivers.cpp \
    audiolib/src/flac.cpp \
    audiolib/src/formats.cpp \
    audiolib/src/fx_man.cpp \
    audiolib/src/gmtimbre.cpp \
    audiolib/src/midi.cpp \
    audiolib/src/mix.cpp \
    audiolib/src/mixst.cpp \
    audiolib/src/multivoc.cpp \
    audiolib/src/music.cpp \
    audiolib/src/opl3.cpp \
    audiolib/src/pitch.cpp \
    audiolib/src/vorbis.cpp \
    audiolib/src/xa.cpp \
    audiolib/src/xmp.cpp \
    audiolib/src/driver_sdl.cpp\


duke3d_game_objs := \
    duke3d/src/actors.cpp \
    duke3d/src/anim.cpp \
    duke3d/src/cheats.cpp \
    duke3d/src/cmdline.cpp \
    duke3d/src/common.cpp \
    duke3d/src/config.cpp \
    duke3d/src/demo.cpp \
    duke3d/src/game.cpp \
    duke3d/src/gamedef.cpp \
    duke3d/src/gameexec.cpp \
    duke3d/src/gamestructures.cpp \
    duke3d/src/gamevars.cpp \
    duke3d/src/global.cpp \
    duke3d/src/grpscan.cpp \
    duke3d/src/input.cpp \
    duke3d/src/menus.cpp \
    duke3d/src/network.cpp \
    duke3d/src/osdcmds.cpp \
    duke3d/src/osdfuncs.cpp \
    duke3d/src/player.cpp \
    duke3d/src/premap.cpp \
    duke3d/src/rts.cpp \
    duke3d/src/savegame.cpp \
    duke3d/src/sbar.cpp \
    duke3d/src/screens.cpp \
    duke3d/src/sector.cpp \
    duke3d/src/sounds.cpp \
    duke3d/src/text.cpp \
    duke3d/src/dnames.cpp \

blood_game_objs := \
	blood/src/blood.cpp \
	blood/src/actor.cpp \
	blood/src/ai.cpp \
	blood/src/aibat.cpp \
	blood/src/aibeast.cpp \
	blood/src/aiboneel.cpp \
	blood/src/aiburn.cpp \
	blood/src/aicaleb.cpp \
	blood/src/aicerber.cpp \
	blood/src/aicult.cpp \
	blood/src/aigarg.cpp \
	blood/src/aighost.cpp \
	blood/src/aigilbst.cpp \
	blood/src/aihand.cpp \
	blood/src/aihound.cpp \
	blood/src/aiinnoc.cpp \
	blood/src/aipod.cpp \
	blood/src/airat.cpp \
	blood/src/aispid.cpp \
	blood/src/aitchern.cpp \
	blood/src/aizomba.cpp \
	blood/src/aizombf.cpp \
	blood/src/asound.cpp \
	blood/src/barf.cpp \
	blood/src/callback.cpp \
	blood/src/choke.cpp \
	blood/src/common.cpp \
	blood/src/config.cpp \
	blood/src/controls.cpp \
	blood/src/credits.cpp \
	blood/src/db.cpp \
	blood/src/demo.cpp \
	blood/src/dude.cpp \
	blood/src/endgame.cpp \
	blood/src/eventq.cpp \
	blood/src/fire.cpp \
	blood/src/fx.cpp \
	blood/src/gamemenu.cpp \
	blood/src/gameutil.cpp \
	blood/src/getopt.cpp \
	blood/src/gfx.cpp \
	blood/src/gib.cpp \
	blood/src/globals.cpp \
	blood/src/gui.cpp \
	blood/src/inifile.cpp \
	blood/src/iob.cpp \
	blood/src/levels.cpp \
	blood/src/loadsave.cpp \
	blood/src/map2d.cpp \
	blood/src/menu.cpp \
	blood/src/messages.cpp \
	blood/src/mirrors.cpp \
	blood/src/misc.cpp \
	blood/src/network.cpp \
	blood/src/osdcmd.cpp \
	blood/src/player.cpp \
	blood/src/qav.cpp \
	blood/src/qheap.cpp \
	blood/src/replace.cpp \
	blood/src/resource.cpp \
	blood/src/screen.cpp \
	blood/src/sectorfx.cpp \
	blood/src/seq.cpp \
	blood/src/sfx.cpp \
	blood/src/sound.cpp \
	blood/src/tile.cpp \
	blood/src/trig.cpp \
	blood/src/triggers.cpp \
	blood/src/view.cpp \
	blood/src/warp.cpp \
	blood/src/weapon.cpp \


    blood_game_objs += blood/src/nnextsif.cpp
	blood_game_objs += blood/src/nnexts.cpp
	blood_game_objs += blood/src/nnextstr.cpp
	blood_game_objs += blood/src/nnextcdud.cpp
    blood_game_objs += blood/src/aicdud.cpp


libsmackerdec_objs := \
    libsmackerdec/src/BitReader.cpp \
    libsmackerdec/src/FileStream.cpp \
    libsmackerdec/src/HuffmanVLC.cpp \
    libsmackerdec/src/LogError.cpp \
    libsmackerdec/src/SmackerDecoder.cpp \


mimalloc_objs := \
    mimalloc/src/alloc.c \
    mimalloc/src/alloc-aligned.c \
    mimalloc/src/alloc-posix.c \
    mimalloc/src/arena.c \
    mimalloc/src/bitmap.c \
    mimalloc/src/heap.c \
    mimalloc/src/init.c \
    mimalloc/src/options.c \
    mimalloc/src/os.c \
    mimalloc/src/page.c \
    mimalloc/src/random.c \
    mimalloc/src/region.c \
    mimalloc/src/segment.c \
    mimalloc/src/stats.c \

imgui_objs := \
    imgui/src/imgui.cpp \
    imgui/src/imgui_demo.cpp \
    imgui/src/imgui_draw.cpp \
    imgui/src/imgui_impl_opengl3.cpp \
    imgui/src/imgui_impl_sdl2.cpp \
    imgui/src/imgui_tables.cpp \
    imgui/src/imgui_widgets.cpp \

ANDROID_SRC_FILES = \
     android/game_interface.cpp \
     ../../Clibs_OpenTouch/raze/touch_interface.cpp \
     ../../Clibs_OpenTouch/touch_interface_base.cpp \
     ../../Clibs_OpenTouch/android_jni_inc.cpp \

LOCAL_SRC_FILES =  $(ANDROID_SRC_FILES) $(engine_objs) $(glad_objs) $(mact_objs) $(audiolib_objs) $(blood_game_objs)  $(libsmackerdec_objs) $(imgui_objs)

LOCAL_LDLIBS :=  -llog -lOpenSLES -lGLESv2

LOCAL_STATIC_LIBRARIES := logwritter flac nblood_xmp
LOCAL_SHARED_LIBRARIES := touchcontrols openal SDL2 SDL2_mixer SDL2_image saffal


include $(BUILD_SHARED_LIBRARY)
