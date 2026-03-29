#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: [YOUR NAME]  | Reg No: [YOUR REG NO]
# Course: Open Source Software | Chosen Software: Python
# Purpose: Displays system identity - OS, kernel, user,
#          Python version, and key paths using variables
#          and command substitution
# ============================================================

# -- Variables to store student and software info --
STUDENT_NAME="[SHAKET SINGH RAJPOOT]"
REG_NO="[24BET10013]"
SOFTWARE="Python"

# -- Command substitution: $() captures live system output --
OS_NAME=$(lsb_release -d 2>/dev/null | cut -f2 || echo "Linux")
KERNEL=$(uname -r)
LOGGED_USER=$(whoami)
HOME_DIR=$HOME
PYTHON_PATH=$(which python3)
PYTHON_VER=$(python3 --version 2>&1)
PIP_VER=$(pip3 --version 2>/dev/null || echo "pip not found")

echo "============================================================"
echo "         SYSTEM IDENTITY REPORT"
echo "============================================================"
echo ""
echo "  Student Name  : $STUDENT_NAME"
echo "  Reg No        : $REG_NO"
echo "  Chosen SW     : $SOFTWARE"
echo ""
echo "------------------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "------------------------------------------------------------"
echo ""
echo "  OS            : $OS_NAME"
echo "  Kernel        : $KERNEL"
echo "  Logged User   : $LOGGED_USER"
echo "  Home Directory: $HOME_DIR"
echo ""
echo "------------------------------------------------------------"
echo "  PYTHON DETAILS"
echo "------------------------------------------------------------"
echo ""
echo "  Python Path   : $PYTHON_PATH"
echo "  Python Version: $PYTHON_VER"
echo "  Pip Version   : $PIP_VER"
echo ""

# -- List Python directories using ls -ld --
echo "------------------------------------------------------------"
echo "  PYTHON DIRECTORIES"
echo "------------------------------------------------------------"
echo ""
ls -ld /usr/lib/python3* 2>/dev/null | head -5
echo ""
echo "============================================================"
echo "  Script 1 complete."
echo "============================================================"
