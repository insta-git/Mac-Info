#!/bin/bash

# Check if Office 365 is installed
if [ -d "/Applications/Microsoft Office 365" ]; then
    # If Office 365 is installed, prompt the user to confirm the uninstallation
    read -p "Office 365 is installed. Are you sure you want to uninstall it? [y/N]: " confirmation

    # If the user confirms, uninstall Office 365
    if [ "$confirmation" == "y" ] || [ "$confirmation" == "Y" ]; then
        echo "Uninstalling Office 365..."
        sudo /Library/Application\ Support/Microsoft/MAU2.0/Microsoft\ AutoUpdate.app/Contents/MacOS/msupdate --uninstall /Applications/Microsoft\ Office\ 365
        echo "Office 365 has been uninstalled."
    else
        echo "Office 365 will not be uninstalled."
    fi
else
    echo "Office 365 is not installed."
fi
