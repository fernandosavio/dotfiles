function update-system
    # 'sudo echo' just to force password insert before printing
    sudo echo "--- Updating snaps ---"
    sudo snap refresh
    echo "--- end ---
    
    "

    echo "--- Upgrading packages ---"
    sudo nala upgrade
    echo "--- end ---
    
    "

    echo "--- Removing unused packages ---"
    sudo nala autoremove
    echo "--- end ---
    
    "

    echo "--- Updating rust toolchains ---"
    rustup update
    echo "--- end ---
    
    "

    echo "--- Listing installed rust binaries ---"
    cargo install-update --list
end
