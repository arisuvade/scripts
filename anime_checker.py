#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup
from sys import argv, exit


# Print the usage and commands
if len(argv) < 2 or argv[1] in ("-h", "--help"):
    print("Usage:")
    print("    ./anime_checker.py [ANIME KEYWORD]")
    print("Commands:")
    print("    -h, --help       Show this help and exit")
    print("    -l, --list       List all new episodes")
    exit(0)

# Scrape the gogoanime site
try:
    url: str = "https://gogoanime.llc/"
    response = requests.get(url)
    soup = BeautifulSoup(response.content, "html.parser")
    anime_list: list[dict[str, str]] = []
except:
    print("No internet connection found. Please check your connection and try again.")
    exit(1)

# Find the list of anime on the home page
anime_home = soup.find("ul", {"class": "items"}).find_all("li")
for anime in anime_home:
    anime_title: str = anime.find("p", {"class": "name"}).text
    anime_url: str = anime.find("a")["href"]
    anime_list.append({"title": anime_title, "url": anime_url})

# Print the list of all anime on the home page
if argv[1] in ("-l", "--list"):
    print("New episodes:")
    for i, anime in enumerate(anime_list, 1):
        print(f"{i}. {anime['title']}")
    exit(0)

# Anime keyword
search_anime: str = argv[1].lower()

# Get the index of anime in the anime_list
anime_idx: None | int = None
for idx, anime in enumerate(anime_list):
    if search_anime in anime["title"].lower():
        anime_idx = idx
        break

# If there is a new episode of anime
if anime_idx is not None:
    print("There is a new episode available!")

    # get the episode
    url = anime_list[anime_idx]["url"]
    *_, episode = url.split("-")
    print(f"Episode: {episode}")

    print(f"Link: https://gogoanime.llc{anime_list[anime_idx]['url']}")

# If there is no new episode
else:
    print(f"No new episode available.")
