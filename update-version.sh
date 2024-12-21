#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Function to display usage
usage() {
  echo "Usage: $0 [major|minor|patch]"
  echo "Example: $0 minor"
  exit 1
}

# Ensure a version bump type is provided
if [ -z "$1" ]; then
  usage
fi

# Validate the version bump type
BUMP_TYPE=$1
if [[ "$BUMP_TYPE" != "major" && "$BUMP_TYPE" != "minor" && "$BUMP_TYPE" != "patch" ]]; then
  usage
fi

# Ensure jq is installed
if ! command -v jq &>/dev/null; then
  echo "Error: jq is not installed. Install it and try again."
  exit 1
fi

# Update version in package.json
CURRENT_VERSION=$(jq -r '.version' package.json)
if [ -z "$CURRENT_VERSION" ]; then
  echo "Error: Unable to retrieve the current version from package.json."
  exit 1
fi

echo "Current version: $CURRENT_VERSION"

IFS='.' read -r MAJOR MINOR PATCH <<<"$CURRENT_VERSION"

case $BUMP_TYPE in
  major)
    NEW_VERSION="$((MAJOR + 1)).0.0"
    ;;
  minor)
    NEW_VERSION="$MAJOR.$((MINOR + 1)).0"
    ;;
  patch)
    NEW_VERSION="$MAJOR.$MINOR.$((PATCH + 1))"
    ;;
esac

echo "Updating to new version: $NEW_VERSION"

# Update the version in package.json
jq ".version = \"$NEW_VERSION\"" package.json > package.tmp.json && mv package.tmp.json package.json

# Commit changes and create a Git tag
git add package.json
git commit -m "chore: bump version to $NEW_VERSION"
git tag -a "v$NEW_VERSION" -m "Release version $NEW_VERSION"

# Push changes and tags
git push origin main
git push origin "v$NEW_VERSION"

echo "Version updated to $NEW_VERSION and tagged as v$NEW_VERSION."
