#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "===== Directory Audit Report ====="
echo "----------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------------------"

# --- Software config directory check ---
SOFTWARE_CONFIG="$HOME/.config"

echo "Checking software config directory: $SOFTWARE_CONFIG"

if [ -d "$SOFTWARE_CONFIG" ]; then
    PERMS=$(ls -ld $SOFTWARE_CONFIG | awk '{print $1, $3, $4}')
    echo "Config Dir Permissions: $PERMS"
else
    echo "Config directory not found"
fi

echo "=================================="