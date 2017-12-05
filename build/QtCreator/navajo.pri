########################################################################
# Copyright (c) 1988-2017 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: navajo.pri
#
# Author: $author$
#   Date: 12/3/2017
#
# build QtCreator .pri file for navajo
########################################################################

HOME = /Users/jboyd

########################################################################
# zlib
#
# pkg-config --cflags --libs zlib
#
build_zlib_INCLUDEPATH += \
$${HOME}/build/zlib/include \

build_zlib_DEFINES += \

build_zlib_LIBS += \
-L$${HOME}/build/zlib/lib \
-lz \

########################################################################
# openssl
#
# pkg-config --cflags --libs openssl
#
build_openssl_INCLUDEPATH += \
$${HOME}/build/openssl/include \

build_openssl_DEFINES += \

build_openssl_LIBS += \
-L$${HOME}/build/openssl/lib \
-lssl \
-lcrypto \

########################################################################
# navajo
build_navajo_VERSION=1.5.0 \

build_navajo_INCLUDEPATH += \
$${build_openssl_INCLUDEPATH} \
$${build_zlib_INCLUDEPATH} \

build_navajo_DEFINES += \
$${build_zlib_DEFINES} \
$${build_openssl_DEFINES} \
LIBNAVAJO_SOFTWARE_VERSION=\"\\\"$${build_navajo_VERSION}\\\"\" \

build_navajo_LIBS += \
$${build_openssl_LIBS} \
$${build_zlib_LIBS} \
