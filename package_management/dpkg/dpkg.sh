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
    # Sometimes when you try to install and the dependencies of a package do not exist, giving you an error, you
    # can install the dependencies by doing an apt update that will update based on dependencies that were requested
    # but not installed.
    apt update
    apt -f upgrade
    # Remove packages
    dpkg -r <package name>
    # List out if it is installed
    dpkg -l <package name>
    # Purge a package with the contents it came in with.
    dpkg -P <package name>
}