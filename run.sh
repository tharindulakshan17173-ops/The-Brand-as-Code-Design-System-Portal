#!/bin/bash

echo ""
echo "============================================"
echo "  Brand-as-Code Design System Portal"
echo "============================================"
echo ""

if [ ! -d "dist" ]; then
    echo "Building the application..."
    npm run build
    if [ $? -ne 0 ]; then
        echo "Build failed!"
        exit 1
    fi
fi

echo "Starting server..."
echo ""
echo "Open your browser and go to: http://localhost:3000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

node start.js
