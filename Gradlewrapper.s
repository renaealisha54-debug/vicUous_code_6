#!/bin/bash
# Run this script once to download the gradle-wrapper.jar
# Required before running ./gradlew

WRAPPER_DIR="$(dirname "$0")/gradle/wrapper"
JAR_URL="https://github.com/gradle/gradle/raw/v8.6.0/gradle/wrapper/gradle-wrapper.jar"

echo "Downloading gradle-wrapper.jar..."
curl -L "$JAR_URL" -o "$WRAPPER_DIR/gradle-wrapper.jar"

if [ -f "$WRAPPER_DIR/gradle-wrapper.jar" ]; then
    echo "✓ gradle-wrapper.jar downloaded successfully"
    echo "You can now run: ./gradlew tasks"
else
    echo "✗ Download failed. Please download manually from:"
    echo "  $JAR_URL"
    echo "  and place it in: $WRAPPER_DIR/"
fi
