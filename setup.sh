#!/bin/bash

# Create virtual environment
python3 -m venv spotify_venv
if [ $? -ne 0 ]; then
    echo "Error: Failed to create virtual environment."
    exit 1
fi

# Activate virtual environment
source spotify_venv/bin/activate
if [ $? -ne 0 ]; then
    echo "Error: Failed to activate virtual environment."
    exit 1
fi

# Upgrade pip
pip install --upgrade pip
if [ $? -ne 0 ]; then
    echo "Warning: Failed to upgrade pip. Continuing..."
fi

# Install packages
pip install spotdl requests
if [ $? -ne 0 ]; then
    echo "Error: Failed to install spotdl or requests."
    exit 1
fi

# Install from requirements.txt if it exists
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
    if [ $? -ne 0 ]; then
        echo "Warning: Failed to install some packages from requirements.txt"
    fi
fi

echo "Setup complete! Virtual environment 'spotify_venv' is ready."
