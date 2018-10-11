# !/usr/bin/bash

install_package() {
    # search for the package httpd
    yum search httpd
    # Information about the package httpd
    yum info httpd
    # dependencies needed by httpd if httpd has not been installed
    # if httpd has been installed, the dependencies that were installed with httpd
    yum deplist httpd
    # Install the packcage
    yum install httpd
    # Check that the package is installed
    which httpd
    yum list installed httpd
}

remove_package(){
    # Remove the package httpd and any of its dependencies that are not needed by other packages.
    yum autoremove httpd
    # Remove the package only and not the dependencies.
    yum remove httpd
}

update_packages(){
    # Repositories where yum uses to source the packages.
    yum repolist
    # Print the file where repolist information is stored.
    less /etc/yum.repos.d/Centos-Base.repo
    # Remove cache data for repository installation
    yum clean all
    # After removing the cache, the yum update commands looks for updates for each of the packages that has been installed
    yum update
}

main(){
    install_package
    remove_package
    update_packages
}

main
