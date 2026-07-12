#!/bin/bash

# Check if version provided
if [ -z "$1" ]; then
    echo "Error: Version number required"
    echo "Usage: ./update-ui-home-html.sh v104"
    exit 1
fi

# Get version (convert to uppercase)
VERSION=$(echo "$1" | tr '[:lower:]' '[:upper:]')

# File to update
HOME_HTML="src/ui/src/main/resources/templates/home.html"

echo "Updating version to $VERSION..."

# Simple approach: replace the entire span content
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s|Secret Shop - </span>|Secret Shop - ${VERSION}</span>|g" "$HOME_HTML"
    sed -i '' "s|Secret Shop - V[0-9][0-9]*</span>|Secret Shop - ${VERSION}</span>|g" "$HOME_HTML"
else
    # Linux
    sed -i "s|Secret Shop - </span>|Secret Shop - ${VERSION}</span>|g" "$HOME_HTML"
    sed -i "s|Secret Shop - V[0-9][0-9]*</span>|Secret Shop - ${VERSION}</span>|g" "$HOME_HTML"
fi

echo "Done! home.html updated to $VERSION"
echo ""
echo "Changes made:"
git diff "$HOME_HTML"
echo ""
echo "Next step: Run ./git-push.sh to deploy changes"