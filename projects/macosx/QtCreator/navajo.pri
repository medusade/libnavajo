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
# MacOSX QtCreator .pri file for navajo
########################################################################
NAVAJO_OS = macosx

#QMAKE_CXXFLAGS += -std=c++11
#QMAKE_CXXFLAGS += -std=c++0x

########################################################################
# zlib
ZLIB_BLD = $${OTHER_BLD}/$${ZLIB_PKG}/build/$${NAVAJO_OS}/QtCreator/$${BUILD_CONFIG}
ZLIB_LIB = $${ZLIB_BLD}/lib

zlib_LIBS += \
-L$${ZLIB_LIB}/libzlib \
-lzlib \

########################################################################
# openssl
OPENSSL_BLD = $${OTHER_BLD}/$${OPENSSL_PKG}/build/$${NAVAJO_OS}/QtCreator/$${BUILD_CONFIG}
OPENSSL_LIB = $${OPENSSL_BLD}/lib

openssl_LIBS += \
-L$${OPENSSL_LIB}/libopenssl \
-lopenssl \

########################################################################
# navajo
navajo_INCLUDEPATH += \

navajo_DEFINES += \

navajo_LIBS += \
$${build_navajo_LIBS} \
-lpthread \
-ldl \
