import os
import re

import requests

DB_FILE = "db/Categories.lua"
BUILDS_FILE = ".contrib/Harvesters/builds.txt"
USED_QUESTS_FILE = "quest_ids.txt"


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


def OpenAndStripLineToolsFile(build: str):
    url = f"https://wow.tools/dbc/api/export/?name=questv2&build={build}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36"
    }
    r = requests.get(url, headers=headers)
    csvname = "questv2.csv"
    with open(csvname, "wb") as f:
        f.write(r.content)
    newname = "NewToolquestv2.txt"
    with open(newname, "w") as TOOLNew, open(csvname) as TOOL:
        quests = map(lambda x: x.split(",")[0], TOOL.read().splitlines()[1:])
        TOOLNew.write("\n".join(quests))
        TOOLNew.write("\n")
    return newname


def diff(used_quests_path: str, wowtools_path: str, build: str, diff_path: str) -> None:
    with (
        open(used_quests_path) as used_quests_file,
        open(wowtools_path) as build_quests_file,
        open(diff_path) as diff_file,
    ):
        used_quests = set(used_quests_file.read().splitlines())
        build_quests = set(build_quests_file.read().splitlines())
        diff_stuff = set(diff_file.read().splitlines())
        difference = build_quests - used_quests - diff_stuff
    if difference:
        with open(diff_path, "a") as diff_file:
            diff_file.write(build + "\n")
            diff_file.write("\n".join(sorted(difference, key=int)))
            diff_file.write("\n")


def main():
    get_used_quest_ids()
    Removable = []  ##Divine Steeds + Extra
    Difference = open("Difference.txt", "w")
    Difference.close()
    build_list = open(BUILDS_FILE).read().splitlines()
    for Build in reversed(build_list):
        print(Build)
        TOOLname = OpenAndStripLineToolsFile(Build)
        diff(USED_QUESTS_FILE, TOOLname, Build, "Difference.txt")


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
