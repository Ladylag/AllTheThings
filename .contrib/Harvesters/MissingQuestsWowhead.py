import re
import requests
import csv
import os
from bs4 import BeautifulSoup




def BuildList():
    ATT = open("BuilderQuest.txt", "r")
    Buildlist = []
    for line in ATT.readlines():
        try:
            line = re.sub('[^0-9]+^.','', line)
            line = line.strip('\n')
            Buildlist.append(line)
        except:
            continue
    Buildlist.reverse()
    return Buildlist

def WoWheadget(QuestID, Version):
    if Version == "Retail":
        verison = "www."
    elif Version == "TBC":
        verison = "tbc."
    elif Version == "CLASSIC":
        verison = "classic."
    link = "https://"+verison+"wowhead.com/quest="+QuestID
    #headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36'}
    html = requests.get(link).text
    return html

def Givename(html, Version):
    soup = BeautifulSoup(html, "lxml")
    res1 = soup.findAll("h1", {"class": "heading-size-1"})
    res2 = soup.findAll("div", {"class": "database-detail-page-not-found-message"})
    if not res2:
        for r in res1:
            if Version == "Retail":
                name = r.text
            else:
                name = Version + ": "+ r.text
    else:
        name = ""
    return name

def main():
    New = open("New.txt", "w")
    Versionlist = ["Retail","TBC","CLASSIC"]
    Buildlist = BuildList()
    Missing = open("toolsmissingquest.txt", "r")
    Missinglines = Missing.readlines()
    #Missinglines = ["7.3.0.24492","7.3.0.24500","48545","48546","48547","48548","48568","48582","7.3.0.24539","1","3"]
    for line in Missinglines:
        line = line.strip()
        name = "q("+line+")"+",\t-- "
        if line in Buildlist:
            New.write(line+"\n")
            print(line)
        else:
            for Verison in Versionlist:
                html = WoWheadget(line, Verison)
                comment = Givename(html, Verison)
                if Verison == "Retail":
                    if comment != "":
                     name=name+comment
                else:
                    if comment != "":
                        name = name+",\t\t"+comment
            New.write(name+"\n")
    Missing.close()
    New.close()

main()