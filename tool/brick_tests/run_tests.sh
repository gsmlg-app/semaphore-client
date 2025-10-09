#!/bin/bash

# Script to run brick tests separately from Flutter tests

echo "Running Mason brick tests..."

# Navigate to brick tests directory
cd "$(dirname "$0")"

# Get dependencies
echo "Getting dependencies..."
dart pub get

# Run all brick tests
echo "Running brick tests..."
dart test

echo "Brick tests completed!"