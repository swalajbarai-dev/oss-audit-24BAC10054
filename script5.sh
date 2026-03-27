#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_${USER}.txt"

# Compose manifesto
echo "----------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "By: $USER on $DATE" >> $OUTPUT
echo "----------------------------------" >> $OUTPUT

echo "I use $TOOL every day because it represents the spirit of open collaboration." >> $OUTPUT
echo "To me, freedom means $FREEDOM, and it inspires me to create without limits." >> $OUTPUT
echo "One day, I will build $BUILD and share it freely with the world." >> $OUTPUT

echo "----------------------------------" >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT