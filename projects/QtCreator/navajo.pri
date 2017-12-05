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
# QtCreator .pri file for navajo
########################################################################

OTHER_PKG = ../../../../../../../..
OTHER_BLD = ..

########################################################################
# zlib
ZLIB_PKG = $${OTHER_PKG}/zlib/cpp/xos
ZLIB_PRJ = $${ZLIB_PKG}
ZLIB_SRC = $${ZLIB_PKG}/src

zlib_INCLUDEPATH += \

zlib_DEFINES += \

zlib_LIBS += \

########################################################################
# openssl
OPENSSL_PKG = $${OTHER_PKG}/openssl/cpp/xos
OPENSSL_PRJ = $${OPENSSL_PKG}
OPENSSL_SRC = $${OPENSSL_PKG}/src

openssl_INCLUDEPATH += \

openssl_DEFINES += \

openssl_LIBS += \

########################################################################
# navajo
NAVAJO_PKG = ../../../../..
NAVAJO_BLD = ../..

NAVAJO_PRJ = $${NAVAJO_PKG}
NAVAJO_BIN = $${NAVAJO_BLD}/bin
NAVAJO_LIB = $${NAVAJO_BLD}/lib
NAVAJO_SRC = $${NAVAJO_PKG}/src

CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
navajo_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
navajo_DEFINES += RELEASE_BUILD
}

navajo_INCLUDEPATH += \
$${NAVAJO_SRC} \
$${NAVAJO_PKG}/include \
$${build_navajo_INCLUDEPATH} \

navajo_DEFINES += \
$${build_navajo_DEFINES} \

navajo_LIBS += \
-L$${NAVAJO_LIB}/libnavajo \
-lnavajo \
