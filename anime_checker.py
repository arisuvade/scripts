#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup
from sys import argv, exit


if len(argv) < 2:
    print("Run python3 anime_checker.py 'anime want to search'")
    exit(1)

url: str = "https://gogoanime.llc/"
response = requests.get(url)
soup = BeautifulSoup(response.content, "html.parser")
anime_list: list[dict[str, str]] = []

# find the list of anime on the home page
anime_home = soup.find("ul", {"class": "items"}).find_all("li")
for anime in anime_home:
    anime_title: str = anime.find("p", {"class": "name"}).text
    anime_url: str = anime.find("a")["href"]
    anime_list.append({"title": anime_title, "url": anime_url})

search_anime: str = argv[1].lower()

# get the index of anime in the anime_list
anime_idx: None | int = None
for idx, anime in enumerate(anime_list):
    if search_anime in anime["title"].lower():
        anime_idx = idx
        break

if anime_idx is not None:
    print("There is a new episode available!")

    # get the episode
    url = anime_list[anime_idx]["url"]
    *_, episode = url.split("-")
    print(f"Episode: {episode}")

    print(f"Link: https://gogoanime.llc{anime_list[anime_idx]['url']}")
else:
    print(f"No new episode available.")