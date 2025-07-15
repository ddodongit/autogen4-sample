#!/bin/bash
set -e

echo "🔧 Post-create setup for AutoGen 0.4 Sample..."

# Ensure uv is in PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Verify uv is available
if ! command -v uv &> /dev/null; then
    echo "❌ uv not found in PATH. Please check setup script."
    exit 1
fi

# Create virtual environment with Python 3.11 (matching the container)
echo "📦 Creating Python virtual environment..."
uv venv .venv --python 3.11

# Activate virtual environment
source .venv/bin/activate

# Install dependencies from pyproject.toml
echo "📚 Installing Python dependencies..."
uv pip install -e .

# Create .vscode directory if it doesn't exist
mkdir -p .vscode

# Create VS Code settings
cat > .vscode/settings.json << EOF
{
    "python.defaultInterpreterPath": "./.venv/bin/python",
    "python.terminal.activateEnvironment": true,
    "jupyter.kernels.filter": [
        {
            "path": "\${workspaceFolder}/.venv/bin/python",
            "type": "pythonEnvironment"
        }
    ],
    "python.formatting.provider": "black",
    "python.linting.enabled": true,
    "python.linting.ruffEnabled": true,
    "files.associations": {
        "*.ipynb": "jupyter-notebook"
    }
}
EOF

# Create launch configuration for debugging
cat > .vscode/launch.json << EOF
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: Current File",
            "type": "python",
            "request": "launch",
            "program": "\${file}",
            "console": "integratedTerminal",
            "cwd": "\${workspaceFolder}",
            "env": {
                "PYTHONPATH": "\${workspaceFolder}"
            }
        },
        {
            "name": "Python: Main Module",
            "type": "python",
            "request": "launch",
            "module": "main",
            "console": "integratedTerminal",
            "cwd": "\${workspaceFolder}"
        }
    ]
}
EOF

echo "🎉 Post-create setup completed!"
echo ""
echo "🔥 Quick start commands:"
echo "  - source .venv/bin/activate  # Activate virtual environment"
echo "  - uv run jupyter lab         # Start Jupyter Lab"
echo "  - uv run autogenstudio ui    # Start AutoGen Studio"
echo ""
echo "📝 Don't forget to:"
echo "  1. Update .env with your Azure OpenAI credentials"
echo "  2. Test the environment with one of the notebooks"
echo ""
