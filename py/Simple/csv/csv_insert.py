#scriptinsert dans csv
import csv 

with open ('protagonist.csv', 'w') as csvfile:

    #noms d'entête
    fieldnames = ['Role', 'first_name', 'last_name']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    #data
    writer.writeheader()
    writer.writerow({'Role':'PO',
                     'first_name':'Celine',
                     'last_name':'Anidjar'})
    writer.writerow({'Role':'Developer',
                     'first_name':'Aurelien',
                     'last_name':'Bonnafont'})
    writer.writerow({'Role':'Developer',
                     'first_name':'Hamza',
                     'last_name':'Bey'})
    writer.writerow({'Role':'Developer',
                     'first_name':'Zouhair',
                     'last_name':'Etouhami'})
    writer.writerow({'Role':'Developer',
                     'first_name':'Marine',
                     'last_name':'Denis'})
    writer.writerow({'Role':'QA Testeur',
                     'first_name':'Margot',
                     'last_name':'Colin'})

print ("donnees inserees")

