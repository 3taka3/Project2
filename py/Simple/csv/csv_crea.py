#scriptcreation csv
import csv
#definition des lignes du fichier 
data = [["Role", "first_name", "last_name"], 
             ["DSI", "Sylvain", "Planchon"],
             ["PM", "Marc", "Frossard"]]

with open('protagonist.csv', 'w') as file : 
    writer = csv.writer(file)
    writer.writerows(data)

print ("Fichier cree")


