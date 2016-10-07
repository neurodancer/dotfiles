#
# what os are we running?
# 
#

PLATFORM='UNKNOWN'
UNAMESTR=`uname`
if [ "$UNAMESTR" = "Darwin" ]; then
	DOT_OS="macos"
elif [ "$UNAMESTR" = "Linux" ]; then
	DOT_OS="linux"
elif [ "$UNAMESTR" = "FreeBSD" ]; then
	DOT_OS="freebsd"
else
	DOT_OS="unknown"
fi

export DOT_OS
