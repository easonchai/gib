#!/bin/bash

# Function to generate a random number between min and max
rand() {
    local min=$1
    local max=$2
    echo $((RANDOM%(max-min+1)+min))
}

# Default width and height with increased range
WIDTH=$(rand 300 1080)
HEIGHT=$(rand 300 1080)

# Function to download meme
gib_meme() {
    local filename="meme-$(date +%s)"
    if [ ! -z "$1" ]; then
        filename=$1
    fi
    
    while : 
    do
        response=$(curl -s "https://meme-api.com/gimme")
        url=$(echo $response | jq -r '.url // empty')
        nsfw=$(echo $response | jq -r '.nsfw // empty')
        ext="${url##*.}"

        if [[ "$nsfw" == true ]]; then
            echo "NSFW content. Fetching again..."
            continue
        fi

        if [[ "$ext" != "jpg" && "$ext" != "jpeg" && "$ext" != "png" ]]; then
            echo "Unsupported file format ($ext). Fetching again..."
            continue
        fi

        if [ -z "$url" ]; then
            echo "Error: Failed to fetch meme. Please try again."
        else
            curl -s -L "$url" -o "${filename}.${ext}"
            echo "Meme saved as ${filename}.${ext}"
        fi

        break
    done
}

# Function to download image
gib_image() {
    local filename="image-$(date +%s)"
    if [ ! -z "$1" ]; then
        filename=$1
    fi
    curl -s -L "https://picsum.photos/${WIDTH}/${HEIGHT}?random" -o "${filename}.png"
    echo "Image saved as ${filename}.png"
}

# Main function
case $1 in
    meme)
        gib_meme $2
        ;;
    image)
        gib_image $2
        ;;
    *)
        echo "Usage: gib [meme|image] [optional: filename]"
        ;;
esac