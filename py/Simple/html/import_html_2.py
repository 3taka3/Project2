#importer les donnees d'un URL 
import requests
from bs4 import BeautifulSoup 

nom_du_fichier = 'le virtuel' 

url  = "https://fr.wikipedia.org/wiki/Virtuel"
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

#balise specifique à extraire 
data= soup.find('div', class_="mw-parser-output")
print(data)


#récuperation du code html
content = (str(data))

#creation du fichier txt avec donnees recuperee
file = open (nom_du_fichier, "x")
file.write(content)
