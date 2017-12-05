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
#   File: libnavajo.pri
#
# Author: $author$
#   Date: 12/3/2017
#
# QtCreator .pri file for navajo library libnavajo
########################################################################

libnavajo_TARGET = navajo

########################################################################
libnavajo_INCLUDEPATH += \
$${navajo_INCLUDEPATH} \

libnavajo_DEFINES += \
$${navajo_DEFINES} \

########################################################################
# navajo
libnavajo_HEADERS += \

libnavajo_SOURCES += \
$${NAVAJO_SRC}/LocalRepository.cc \
$${NAVAJO_SRC}/LogRecorder.cc \
$${NAVAJO_SRC}/LogFile.cc \
$${NAVAJO_SRC}/LogSyslog.cc \
$${NAVAJO_SRC}/LogStdOutput.cc \
$${NAVAJO_SRC}/WebServer.cc \
$${NAVAJO_SRC}/WebSocketClient.cc \
$${NAVAJO_SRC}/MPFDParser/Parser.cc \
$${NAVAJO_SRC}/MPFDParser/Field.cc \
$${NAVAJO_SRC}/MPFDParser/Exception.cc \

########################################################################




