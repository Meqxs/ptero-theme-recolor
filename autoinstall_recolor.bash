#!/bin/bash

# Variables
THEME_NAME="recolor"
THEME_DIR="/var/www/pterodactyl/resources/themes/$THEME_NAME"
ZIP_URL="https://github.com/Meqxs/ptero-theme-recolor/archive/refs/heads/main.zip"
CREDIT="${1:-Anonymous}"

echo "Installing $THEME_NAME theme..."
echo "Credit: $CREDIT"

# Create theme directory
mkdir -p $THEME_DIR

# Download theme ZIP
curl -L -o /tmp/$THEME_NAME.zip $ZIP_URL

# Unzip theme
unzip -o /tmp/$THEME_NAME.zip -d $THEME_DIR

# Cleanup
rm /tmp/$THEME_NAME.zip

echo "$THEME_NAME theme installed successfully!"
