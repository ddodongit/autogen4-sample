#!/bin/bash
set -e

echo "🚀 Setting up environment..."

# Update system packages
if [ "$EUID" -eq 0 ]; then
    apt-get update
    apt-get install -y curl git
else
    sudo apt-get update
    sudo apt-get install -y curl git
fi

# Install uv (Python package manager)
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"

echo "✅ Basic setup completed!"
