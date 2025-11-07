
import requests
from pprint import pprint
import time
import csv
import os

os.chdir(os.path.dirname(__file__))

URL= "https://randomuser.me/api/"

human_list = []

for i in range(6, 16):
    response = requests.get(URL)
    human_json = response.json()
    first_name = human_json['results'][0]['name']['first']
    last_name = human_json['results'][0]['name']['last']
    birthday = human_json['results'][0]['dob']['date']

    new_human_dict = {
        'idprofesor': i, 
        'nume': last_name, 
        'prenume': first_name, 
        'adresa_idadresa': '1', 
        'data_nasterii': birthday.split('T')[0], 
        'grad': 'I'
    } 

    human_list.append(new_human_dict)
    print('Rezultat:', first_name, last_name, birthday)
    time.sleep(1)

with open("3.Profesori.csv", "a", newline="", encoding="utf-8") as fwriter:
    fieldnames = ["idprofesor", "nume", "prenume", "adresa_idadresa", "data_nasterii", "grad"]
    csv_writer = csv.DictWriter(fwriter, fieldnames=fieldnames)
    for new_human_dict in human_list:
        csv_writer.writerow(new_human_dict)











