#!/bin/bash

# Create and activate virtual environment
python -m venv venv
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