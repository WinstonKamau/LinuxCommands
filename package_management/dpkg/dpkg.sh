dpkg-commands() {
    # View packages that have been installed
    dpkg --get-selections
    # View informations about the package
    dpkg-deb -I <debian file.deb>
    # View if a particular package has been installed
    dpkg --get-selections <package name>
    # Contents of a package and where they will be installed 
    dpkg-deb --contents <debian file.deb>
    # Install the package but the command fails sometimes because some dependencies may miss
    dpkg -i <debian file.deb>
    # Update the cache list for dependencies and upgrade for the file to be installed
    apt-udpate apt -f upgrade
    # Remove packages
    dpkg -r <package name>
    # List out if it is installed
    dpkg -l <package name>
    # Purge a package with the contents it came in with.
    dpkg -P <package name>
}