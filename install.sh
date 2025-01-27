#!/bin/bash

# Check if python3 command exists
if command -v python3 &>/dev/null; then
    PYTHON_CMD=python3
else
    PYTHON_CMD=python
fi

# Create and activate virtual environment
$PYTHON_CMD -m venv venv
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install build dependencies
pip install wheel setuptools

# Install requirements
pip install -r requirements.txt

# Install package in development mode
pip install -e .

echo "Installation complete! To start the application, activate the virtual environment and run: python -m pygpt_net"