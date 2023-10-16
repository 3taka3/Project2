#importer les donnees d'un URL 
import requests
import subprocess
from bs4 import BeautifulSoup 

nom_du_fichier = 'le Wifi peut lire a travers les murs' 

url  = "https://reseau.developpez.com/actu/348269/Le-WiFi-peut-lire-a-travers-les-murs-en-utilisant-la-theorie-geometrique-de-la-diffraction-et-des-cones-de-Keller-correspondants-selon-l-etude-des-chercheurs-de-Mostofi-Lab/"
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

#balise specifique à extraire 
contents= soup.find('div', class_="content")

#recuperation du contenu
def print_content():
    print(contents)
print_content()

#recuperation de l'output
def call_content ():
    contents.call(stdout=True)
    call_content()

def run_content ():
    contents.run(_strainable=True)
    run_content()

open (nom_du_fichier, "a")
f = open (nom_du_fichier)

f.write(contents)
