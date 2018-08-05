# !/usr/bin/bash

install_package() {
    # search for the package
    yum search httpd
    # Information about the package httpd
    yum info httpd
    # dependencies needed by yum
    yum deplist httpd
    # Install the packcage
    yum install httpd
    # Check that the package is installed
    which httpd
    yum list installed httpd


}

remove_package(){
    # Remove the package only and not the dependencies.
    yum remove httpd
    # Remove the package and any dependencies that are not needed by other packages.
    yum autoremove httpd

}

update_packages(){
    # Repositories where yum uses to source the packages.
    yum repolist
    # Print where one of the repolist information
    less /etc/yum.repos.d/Centos-Base.repo
    # Remove cache data for repository installation
    yum clean all
    # Update packages
    yum update
}

main(){
    install_package
    remove_package
    update_packages
}

main
