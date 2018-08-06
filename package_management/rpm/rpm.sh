
install_application(){
    sudo su
    # Check what dependencies a package requires before installing it
    rpm -qpR jdk-8u181-linux-x64.rpm
    # Install the package with verbose output and information on the terminal
    rpm -ivh jdk-8u181-linux-x64.rpm
    # Query the version used
    rpm -q jdk1.8
    # Query the version used with more info
    rpm -qi jdk1.8
    # List files that the package installs
    rpm -ql jdk1.8
    # See what documentation came with the package-(textfiles and manual pages)
    rpm -qd jdk1.8
    # See what dependencies the rpm requires
    rpm -qR jdk1.8
}

update_software(){
    # update the application pn the rpm file
    rpm -Uvh jdk-8u181-linux-x64.rpm
}

remove_software(){
    # Test that removing a package will not have any consequences on other packages
    rpm -e --test jdk1.8
    # Remove the package
    rpm -e jdk1.8
}

