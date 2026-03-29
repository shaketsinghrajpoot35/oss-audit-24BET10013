#!/bin/bash
# ============================================================
# Script 2: Package Inspector
# Author: [YOUR NAME]  | Reg No: [YOUR REG NO]
# Course: Open Source Software | Chosen Software: Python
# Purpose: Loops through a list of packages, checks if each
#          is installed using dpkg, and reports version info
# ============================================================

# -- Array of packages to check --
PACKAGES=("python3" "python3-pip" "python3-venv" "git" "curl" "nano" "wget")

echo "============================================================"
echo "         PACKAGE INSPECTOR"
echo "============================================================"
echo ""
echo "  Checking installation status of key packages..."
echo ""
echo "------------------------------------------------------------"

INSTALLED_COUNT=0
NOT_INSTALLED_COUNT=0

# -- For loop: iterates through each package in the array --
for PKG in "${PACKAGES[@]}"; do
    # -- if/else: check if package is installed via dpkg --
    if dpkg -l "$PKG" 2>/dev/null | grep -q "^ii"; then
        VER=$(dpkg -l "$PKG" 2>/dev/null | grep "^ii" | awk '{print $3}')
        echo "  [INSTALLED]  $PKG  -->  Version: $VER"
        INSTALLED_COUNT=$((INSTALLED_COUNT + 1))
    else
        echo "  [MISSING]    $PKG  -->  Not installed"
        NOT_INSTALLED_COUNT=$((NOT_INSTALLED_COUNT + 1))
    fi
done

echo ""
echo "------------------------------------------------------------"
echo "  SUMMARY"
echo "------------------------------------------------------------"
echo ""
echo "  Total packages checked   : ${#PACKAGES[@]}"
echo "  Installed                : $INSTALLED_COUNT"
echo "  Not installed            : $NOT_INSTALLED_COUNT"
echo ""

# -- Final verdict --
if [ $NOT_INSTALLED_COUNT -eq 0 ]; then
    echo "  Result: All required packages are installed."
else
    echo "  Result: $NOT_INSTALLED_COUNT package(s) missing. Run: sudo apt install <package>"
fi

echo ""
echo "============================================================"
echo "  Script 2 complete."
echo "============================================================"
