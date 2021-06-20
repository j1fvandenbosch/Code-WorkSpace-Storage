#!/bin/bash

# Update the list of packages
sudo apt-get update
read -n1 -r -p "Press any key to continue..." key
echo ""

# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
read -n1 -r -p "Press any key to continue..." key
echo ""

# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
read -n1 -r -p "Press any key to continue..." key
echo ""

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
read -n1 -r -p "Press any key to continue..." key
echo ""

# Update the list of products
sudo apt-get update
read -n1 -r -p "Press any key to continue..." key
echo ""

# Enable the "universe" repositories
sudo add-apt-repository universe
read -n1 -r -p "Press any key to continue..." key
echo ""

# Install PowerShell
sudo apt-get install -y powershell
read -n1 -r -p "Press any key to continue..." key
echo ""

# Start PowerShell
pwsh

