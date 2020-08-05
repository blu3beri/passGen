#!/bin/bash

len=10
capitals='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
lowercase='abcdefghijklmnopqrstuvwxyz'
numbers='0123456789'
specials='~!"#$%&()*+,-./:;<=>?@'
combined='${capitals}${lowercase}${numbers}${specials}'
password=''

getChars() {
    echo ${#1}
    r=$((1 + RANDOM % ${#1}))
    char=${1:$r-1:1}
}

main() {
    for i in {0..$len}; do
        case $i in
        0 | 1)
            getChars $capitals
            password+=$char
            ;;
        2 | 3)
            getChars $lowercase
            password+=$char
            ;;
        4 | 5)
            getChars $numbers
            password+=$char
            ;;
        6 | 7)
            getChars $specials
            password+=$char
            ;;
        *)
            getChars $combined
            password+=$char
            ;;
        esac
    done
    echo $password
}

main
