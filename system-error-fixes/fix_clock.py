#!/usr/bin/env python3

import requests
import os


def get_time_in_philippines():
    try:
        response = requests.get("http://worldtimeapi.org/api/timezone/Asia/Manila")
        response.raise_for_status()  # Check for errors in the HTTP response

        time_data = response.json()
        current_time = time_data["datetime"]

        # Extracting year, month, day, hour, minute, and second
        year = current_time[:4]
        month = current_time[5:7]
        day = current_time[8:10]
        hour = current_time[11:13]
        minute = current_time[14:16]
        second = current_time[17:19]

        # Run the commands on terminal
        command_location = "~/GitHub/scripts/system-error-fixes/fix-clock.sh"
        os.system(f"sudo {command_location} {year} {month} {day} {hour} {minute} {second}")
        
        os.system("~/.config/polybar/launch.sh")

    except requests.exceptions.RequestException as e:
        print(f"Error fetching time data: {e}")


if __name__ == "__main__":
    get_time_in_philippines()
