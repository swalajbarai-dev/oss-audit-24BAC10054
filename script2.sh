#!/bin/bash
# Script 2: FOSS Package Inspector

echo "===== FOSS Package Inspector ====="

# Choose package (you can change this)
PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "----------------------------------"

# Check if package is installed (Ubuntu uses dpkg)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."

    echo "Package Details:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------"

# Case statement for philosophy notes
case $PACKAGE in
    apache2)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql-server)
        echo "MySQL: open source at the heart of millions of apps"
        ;;
    vlc)
        echo "VLC: freedom to play any media format"
        ;;
    firefox)
        echo "Firefox: privacy-focused open web browser"
        ;;
    python3)
        echo "Python: simple, powerful language for everyone"
        ;;
    *)
        echo "Unknown package: open-source empowers collaboration"
        ;;
esac

echo "=================================="