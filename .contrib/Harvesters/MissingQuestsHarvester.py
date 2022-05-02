import re

import requests

DB_FILE = "db/Categories.lua"
BUILDS_FILE = ".contrib/Harvesters/builds.txt"
USED_QUESTS_FILE = "quest_ids.txt"
BUILD_QUESTS_FILE = "build_quests.txt"
DIFF_FILE = "diff.txt"


def get_used_quest_ids() -> None:
    quest_ids = set[str]()
    with open(DB_FILE) as categories_lua:
        for line in categories_lua:
            for element in line.split(","):
                if match := re.search(r"(?:q\(|questID=)(\d+)", element):
                    quest_ids.add(match.group(1))
    with open(USED_QUESTS_FILE, "w") as quest_ids_file:
        quest_ids_file.write("\n".join(sorted(quest_ids, key=int)))
        quest_ids_file.write("\n")


def get_build_quests(build: str) -> None:
    url = f"https://wow.tools/dbc/api/export/?name=questv2&build={build}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36"
    }
    request = requests.get(url, headers=headers)
    lines = request.text.splitlines()[1:]
    with open(BUILD_QUESTS_FILE, "w") as build_quests_file:
        quests = map(lambda x: x.split(",")[0], lines)
        build_quests_file.write("\n".join(quests))
        build_quests_file.write("\n")


def build_diff(build: str) -> None:
    with (
        open(USED_QUESTS_FILE) as used_quests_file,
        open(BUILD_QUESTS_FILE) as build_quests_file,
        open(DIFF_FILE) as diff_file,
    ):
        used_quests = set(used_quests_file.read().splitlines())
        build_quests = set(build_quests_file.read().splitlines())
        diff_stuff = set(diff_file.read().splitlines())
    difference = build_quests - used_quests - diff_stuff
    if difference:
        with open(DIFF_FILE, "a") as diff_file:
            diff_file.write(build + "\n")
            diff_file.write("\n".join(sorted(difference, key=int)))
            diff_file.write("\n")


def main() -> None:
    get_used_quest_ids()
    open(DIFF_FILE, "w").close()
    build_list = open(BUILDS_FILE).read().splitlines()
    for build in reversed(build_list):
        print(build)
        get_build_quests(build)
        build_diff(build)


main()


def CheckAgain(Checkagain):
    get_used_quest_ids()
    ATT = open(USED_QUESTS_FILE)
    TOOL = open(Checkagain)
    Diff = open("diff.txt", "w")
    TOOlr = TOOL.readlines()
    ATTr = ATT.readlines()
    for TOOLline in TOOlr:
        TOOLline = TOOLline.strip()
        for ATTline in ATTr:
            ATTline = ATTline.strip()
            if TOOLline == ATTline:
                Diff.write(TOOLline + "\n")


def OpenAndStripLineMissing(name):
    data_folder = "C:\\Program Files (x86)\\World of Warcraft\\_retail_\\Interface\\AddOns\\AllTheThings\\.contrib\\Parser\\DATAS\\00 - Item Database\\"
    path = data_folder + name + ".lua"
    ATT = open(path)
    newname = "New" + name + ".txt"
    ATTNew = open(newname, "w")
    for line in ATT.readlines():
        line = line.split(",")
        for element in line:
            try:
                if element.find("q(") != -1:
                    element = re.sub("[^0-9^.]", "", element)
                    ATTNew.write(element + "\n")
                elif element.find("questID") != -1:
                    element = re.sub("[^0-9^.]", "", element)
                    ATTNew.write(element + "\n")
            except:
                continue
    ATTNew.close()
    return newname


def CheckMissing():
    get_used_quest_ids()
    ATT = open(USED_QUESTS_FILE)
    TOOLname = OpenAndStripLineMissing("MissingQuests")
    TOOL = open(TOOLname)
    DiffMissing = open("diff.txt", "w")
    TOOlr = TOOL.readlines()
    ATTr = ATT.readlines()
    for TOOLline in TOOlr:
        TOOLline = TOOLline.strip()
        for ATTline in ATTr:
            ATTline = ATTline.strip()
            if TOOLline == ATTline:
                DiffMissing.write(TOOLline + "\n")


CheckMissing()
