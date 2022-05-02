import re

import requests

DB_FILE = "db/Categories.lua"
BUILDS_FILE = ".contrib/Harvesters/builds.txt"
DIFF_FILE = "diff.txt"


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


def build_diff(used_quests: set[str], build: str, build_quests: set[str]) -> None:
    with open(DIFF_FILE) as diff_file:
        diff_stuff = set(diff_file.read().splitlines())
    difference = build_quests - used_quests - diff_stuff
    if difference:
        with open(DIFF_FILE, "a") as diff_file:
            diff_file.write(build + "\n")
            diff_file.write("\n".join(sorted(difference, key=int)))
            diff_file.write("\n")


def main() -> None:
    used_quest_ids = get_quest_ids(DB_FILE)
    open(DIFF_FILE, "w").close()
    build_list = open(BUILDS_FILE).read().splitlines()
    for build in reversed(build_list):
        print(build)
        build_quests = get_build_quests(build)
        build_diff(used_quest_ids, build, build_quests)


main()
