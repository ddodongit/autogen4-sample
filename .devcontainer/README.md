# DevContainer Setup Fix

## Problem
The devcontainer was failing with the error:
```
/bin/sh: 1: bash: not found
```

## Solution
I've modified the devcontainer configuration to:

1. **Install bash first**: Modified the `onCreateCommand` to install bash before running the setup script
2. **Simplified scripts**: Reduced complexity in setup scripts to avoid permission issues
3. **Added common-utils feature**: Added the common-utils feature to ensure essential tools are available
4. **Made scripts executable**: Ensured all scripts have execute permissions

## Changes Made

### devcontainer.json
- Added common-utils feature for better tooling support
- Modified onCreateCommand to install bash first
- Scripts are now executable

### setup.sh
- Simplified to focus on essential packages
- Removed complex sudo handling
- Reduced package list to essentials

### post-create.sh
- Simplified Python environment setup
- Removed extra development dependencies (can be installed later)
- Focused on core functionality

## Testing
The container should now start properly with bash available for the setup scripts.
