#!/bin/bash
set -e

echo "🚀 Setting up environment..."

# Update system packages
sudo apt-get update

# Install essential packages first
sudo apt-get install -y \
    build-essential \
    curl \
    git \
    jq \
    wget \
    ca-certificates

# Install uv (Python package manager)
sudo curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"

# Make sure uv is accessible
if ! command -v uv &> /dev/null; then
    echo "Adding uv to PATH..."
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Verify uv installation
uv --version

echo "✅ Setup completed!"
