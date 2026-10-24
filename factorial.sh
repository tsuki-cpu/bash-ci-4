#!/bin/bash

calculate_factorial() {
    local num=$1
    if [ "$num" -lt 0 ]; then
        echo "Error"
        return 1
    fi
    local result=1
    for (( i=1; i<=num; i++ )); do
        result=$(( result * i ))
    done
    echo "$result"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    calculate_factorial "$1"
fi