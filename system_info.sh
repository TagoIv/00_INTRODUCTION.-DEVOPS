#!/bin/bash

# Function to display OS versions
show_os_versions() {
    lsb_release -a
}

list_bash_users() {
     cat /etc/passwd | grep -E '/bash$' | cut -d: -f1
}
show_open_ports() {
    sudo netstat -tuln
}
main(){
      echo " OS Versions "
    show_os_versions

    echo -e "\n Users with Bash shell installed "
    list_bash_users

    echo -e "\n Open Ports "
    show_open_ports
}
main