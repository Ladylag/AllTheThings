import re

import requests
import os

DB_FILE = "db/Categories.lua"
BUILDS_FILE = ".contrib/Harvesters/builds.txt"
MISSING_QUESTS_FILE = "diff.txt"


def get_quest_ids(filepath: str) -> set[str]:
    quest_ids = set[str]()
    with open(filepath) as quests_file:
        for line in quests_file:
            for element in line.split(","):
                if match := re.search(r"(?:q\(|questID=)(\d+)", element):
                    quest_ids.add(match.group(1))
    return quest_ids


def get_build_quests(build: str) -> set[str]:
    url = f"https://wow.tools/dbc/api/export/?name=questv2&build={build}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36"
    }
    request = requests.get(url, headers=headers)
    lines = request.text.splitlines()[1:]
    return {line.split(",")[0] for line in lines}


def get_missing_quests(used_quests: set[str], build_quests: set[str]) -> set[str]:
    missing_quests = build_quests - used_quests
    if os.path.exists(MISSING_QUESTS_FILE):
        missing_quests -= get_quest_ids(MISSING_QUESTS_FILE)
    return missing_quests


def build_missing_quests() -> None:
    used_quest_ids = get_quest_ids(DB_FILE)
    build_list = open(BUILDS_FILE).read().splitlines()
    for build in reversed(build_list):
        print(build)
        build_quests = get_build_quests(build)
        missing_quests = get_missing_quests(used_quest_ids, build_quests)
        if missing_quests:
            with open(MISSING_QUESTS_FILE, "a") as missing_quests_file:
                missing_quests_file.write(build + "\nq(")
                missing_quests_file.write(
                    "),\t--\nq(".join(sorted(missing_quests, key=int))
                )
                missing_quests_file.write("),\t--\n")


build_missing_quests()
