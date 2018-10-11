update_software() {
    # view the sources list file
    less /etc/apt/sources.list
    # Get updates to your repository list and synchronize these updates to your cache so that when updating a pakage it installs directly from the cache
    apt update
    # Search through your updated cache list for a package
    apt-cache search vlc
    # Install the package
    apt install vlc
    # Remove package 
    apt remove nginx
    # Remove configuration files for the package that may have been left
    apt --purge remove nginx
    # Remove uneeded packages
    apt autoremove
    # Updates all packages based on the updated cache list. It will not upgrade packages that are not on the system already. Does not remove packages.
    apt upgrade
    # Updates all packages adds upgrades and removes unneeded packages. It may add upgrades that were not already on the system
    apt full-upgrade
}