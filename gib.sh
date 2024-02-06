#!/bin/bash

# Function to generate a random number between min and max
rand() {
    local min=$1
    local max=$2
    echo $((RANDOM%(max-min+1)+min))
}