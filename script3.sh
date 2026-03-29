#!/bin/bash
# ============================================================
# Script 3: Python Environment Inspector
# Author: [YOUR NAME]  | Reg No: [YOUR REG NO]
# Course: Open Source Software | Chosen Software: Python
# Purpose: Inspects Python's full environment - binary,
#          version, pip packages, and key library paths
# ============================================================

echo "============================================================"
echo "         PYTHON ENVIRONMENT INSPECTOR"
echo "============================================================"
echo ""

# -- Section 1: Python binary details --
echo "------------------------------------------------------------"
echo "  PYTHON BINARY"
echo "------------------------------------------------------------"
echo ""
echo "  Binary path    : $(which python3)"
echo "  Version        : $(python3 --version 2>&1)"
echo "  Symlink target : $(readlink -f $(which python3) 2>/dev/null)"
echo ""

# -- Section 2: pip details --
echo "------------------------------------------------------------"
echo "  PIP PACKAGE MANAGER"
echo "------------------------------------------------------------"
echo ""
if command -v pip3 &>/dev/null; then
    echo "  Pip version    : $(pip3 --version)"
    echo ""
    echo "  Installed packages (top 15):"
    echo ""
    pip3 list 2>/dev/null | head -17 | tail -15 | while read LINE; do
        echo "    $LINE"
    done
else
    echo "  pip3 not found. Install with: sudo apt install python3-pip"
fi
echo ""

# -- Section 3: Key directories --
echo "------------------------------------------------------------"
echo "  KEY PYTHON DIRECTORIES"
echo "------------------------------------------------------------"
echo ""

DIRS=(
    "/usr/bin/python3"
    "/usr/lib/python3"
    "/usr/lib/python3/dist-packages"
    "$HOME/.local/lib"
)

for DIR in "${DIRS[@]}"; do
    if [ -e "$DIR" ]; then
        echo "  [FOUND]   $DIR"
    else
        echo "  [ABSENT]  $DIR"
    fi
done

echo ""

# -- Section 4: Python quick test --
echo "------------------------------------------------------------"
echo "  PYTHON QUICK TEST"
echo "------------------------------------------------------------"
echo ""
RESULT=$(python3 -c "print('Hello from Python ' + __import__('sys').version.split()[0])" 2>&1)
echo "  Test output: $RESULT"
echo ""
echo "============================================================"
echo "  Script 3 complete."
echo "============================================================"
