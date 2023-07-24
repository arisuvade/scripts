#!/bin/bash

if ! command -v yt-dlp &> /dev/null; then
    echo "yt-dlp is not installed. Please install it before running this script."
    exit 1
fi

while true; do
    read -p "URL: " url
    if [[ $url =~ ^https://youtu\.be/[a-zA-Z0-9_-]{11}$ ]]; then
        break
    else
        echo -e "Invalid YouTube URL. To obtain the proper URL, go to the YouTube video you want to download and click on the 'Share' button below the video player. Then, select the 'Copy' option to get the URL. Ensure the copied URL has the format 'https://youtu.be/xxxxxxxxxxx'.\n"
    fi
done

read -p "Filename: " filename

if [[ -z $filename ]]; then
    output=$(yt-dlp -x --audio-format mp3 $url)
else
    output=$(yt-dlp -x --audio-format mp3 -o "${filename}.%(ext)s" "$url" 2>&1)
fi

if [[ $output == *"ERROR"* ]]; then
    echo "Error occurred while downloading the music."
else
    echo "Download complete."
fi
