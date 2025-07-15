# DevContainer Setup

## Recent Fix Applied

The devcontainer was failing with setup errors. I've applied several fixes:

### Changes Made

1. **Fixed setup.sh**:
   - Improved package installation order
   - Added better error handling
   - Enhanced uv installation verification

2. **Updated devcontainer.json**:
   - Changed onCreateCommand to make scripts executable
   - Added proper PATH configuration
   - Simplified command execution

3. **Enhanced post-create.sh**:
   - Fixed malformed content
   - Added better error checking
   - Improved VS Code configuration

## Alternative Configuration

If you're still experiencing issues, you can try the simplified configuration:

1. Rename `devcontainer.json` to `devcontainer-full.json`
2. Rename `devcontainer-simple.json` to `devcontainer.json`
3. Rebuild the container

## Manual Setup (if needed)

If the automated setup still fails, you can manually set up the environment:

```bash
# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# Create virtual environment
uv venv .venv --python 3.11

# Install dependencies
uv pip install -e .

# Start services
uv run jupyter lab  # For Jupyter
uv run autogenstudio ui --port 8081  # For AutoGen Studio
```

## Troubleshooting

- **uv not found**: Make sure PATH includes `$HOME/.local/bin` and `$HOME/.cargo/bin`
- **Permission denied**: Ensure scripts are executable with `chmod +x .devcontainer/*.sh`
- **Python environment issues**: Try recreating the virtual environment with `uv venv .venv --python 3.11`
- Removed extra development dependencies (can be installed later)
- Focused on core functionality

## Testing
The container should now start properly with bash available for the setup scripts.
