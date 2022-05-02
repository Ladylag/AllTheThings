import csv
import os
import re

import requests

DB_FILE = "db/Categories.lua"


def FileEmpty(name):
    with open(name) as my_file:
        my_file.seek(0, os.SEEK_END)  # go to end of file
        if my_file.tell():  # if current position is truish (i.e != 0)
            my_file.seek(0)  # rewind the file for later use
        else:
            return True


def OpenAndStripLineATTFile(name):
    ATT = open(DB_FILE)
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


def OpenAndStripLineToolsFile(thing, build):
    path = "https://wow.tools/dbc/api/export/?name="
    url = path + thing + "&build=" + build
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36"
    }
    csvname = thing + ".csv"
    r = requests.get(url, headers=headers)  # create HTTP response object
    with open(csvname, "wb") as f:
        f.write(r.content)
        f.close()
    TOOL = open(csvname)
    newname = "NewTool" + thing + ".txt"
    TOOLNew = open(newname, "w")
    count = 0
    old = 0
    for line in TOOL.readlines():
        line = line.split(",")
        line.reverse()
        if count == 0:
            length = len(line)
            for element in line:
                if element == "ID":
                    if count == length:
                        old = 1
                        break
                    else:
                        break
                count = count + 1
        try:
            if old == 0:
                line = re.sub("[^0-9]", "", line[count])
                line.strip()
                TOOLNew.write(line + "\n")
            else:
                line.reverse()
                line = re.sub("[^0-9]", "", line[0])
                line.strip()
                TOOLNew.write(line + "\n")
        except:
            continue
    TOOLNew.close()
    return newname


def bubble_sort(nums):
    # We set swapped to True so the loop looks runs at least once
    swapped = True
    while swapped:
        swapped = False
        for i in range(len(nums) - 1):
            if nums[i] > nums[i + 1]:
                # Swap the elements
                nums[i], nums[i + 1] = nums[i + 1], nums[i]
                # Set the flag to True so we'll loop again
                swapped = True


def diff(ATTname, TOOLname, Removable, Build, Difference):
    if FileEmpty(TOOLname) == True:
        return
    else:
        ATTNew = open(ATTname)
        TOOLNew = open(TOOLname)
        ATTlines = ATTNew.readlines()
        TOOLlines = TOOLNew.readlines()
        Difference.write(Build + "\n")
        Difflines = Difference.readlines()
        for TOOLline in TOOLlines:
            TOOLline = TOOLline.strip()
            boolean = 2
            for ATTline in ATTlines + Removable + Difflines:
                ATTline = ATTline.strip()
                if TOOLline == ATTline:
                    boolean = 1
                    break
                else:
                    boolean = 0
            if boolean == 2:
                print("Fick ej in i if-sats")
            elif boolean == 1:
                continue
            elif boolean == 0:
                Difference.write(TOOLline + "\n")
            else:
                print("Något är stört")
        ATTNew.close()
        TOOLNew.close()


def BuildList():
    ATT = open("BuilderQuest.txt")
    Buildlist = []
    for line in ATT.readlines():
        try:
            line = re.sub("[^0-9]+^.", "", line)
            line = line.strip("\n")
            Buildlist.append(line)
        except:
            continue
    Buildlist.reverse()
    return Buildlist


def main():
    ATTname = OpenAndStripLineATTFile("Categories")
    Removable = []  ##Divine Steeds + Extra
    Difference = open("Difference.txt", "w")
    Difference.close()
    Buildlist = BuildList()
    for Build in Buildlist:
        Difference = open("Difference.txt", "r+")
        print(Build)
        TOOLname = OpenAndStripLineToolsFile("questv2", Build)
        diff(ATTname, TOOLname, Removable, Build, Difference)
        Difference.close()


main()


def CheckAgain(Checkagain):
    ATTname = OpenAndStripLineATTFile("Categories")
    ATT = open(ATTname)
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
    ATTname = OpenAndStripLineATTFile("Categories")
    ATT = open(ATTname)
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
