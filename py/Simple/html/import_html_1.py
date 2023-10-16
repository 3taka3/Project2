#importer les donnees d'un URL 
import requests
from bs4 import BeautifulSoup 

nom_du_fichier = 'le Wifi peut lire a travers les mûrs' 

url  = "https://reseau.developpez.com/actu/348269/Le-WiFi-peut-lire-a-travers-les-murs-en-utilisant-la-theorie-geometrique-de-la-diffraction-et-des-cones-de-Keller-correspondants-selon-l-etude-des-chercheurs-de-Mostofi-Lab/"
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

#balise specifique à extraire 
data= soup.find('div', class_="content")
print(data)


#récuperation du code html
content = (str(data))



file = open (nom_du_fichier, "x")
file.write(content)
