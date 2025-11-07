
import csv
import os

os.chdir(os.path.dirname(__file__))

with open("8.Profesori_backup.csv", "r") as freader:
    csv_reader = csv.DictReader(freader)
    # print(csv_reader)
    for row in csv_reader:
        # print(row)
        print(f'INSERT INTO profesor SET idprofesor={row["idprofesor"]}, nume=\"{row["nume"]}\", prenume=\"{row["prenume"]}\", adresa_idadresa={row["adresa_idadresa"]}, data_nasterii=\"{row["data_nasterii"]}\", grad=\"{row["grad"]}\" ;')
















