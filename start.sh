#!/bin/bash

# better way to use shift, since shift applys only to arguments ($@) and not arbitrarry arrays https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_07.html
function processArgs {
    while (( "$#" )); do
        case $1 in
            -b=*|--build=*)
                build_number="${1#*=}"
                echo "Build Number $build_number"
                ;;
        esac
        shift
    done
}

processArgs $@

./next.sh $@