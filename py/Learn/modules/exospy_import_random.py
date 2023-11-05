#Exercice 3 : utilisation des conditions et des modules
#generateur de valeur aléatoire 
import random

in1 = int(input("Entrez votre âge :"))


#if / elif
if in1 >= 18: 
    #bloc d'instruction
    print("Vous êtes majeur, nous pouvons poursuivre.")
elif in1 < 18:
    print("Vous êtes encore jeune, ici on se la raconte entre ancien. Merci de partir.")
    exit()

in2 = input("Quel langage êtes-vous en train d'apprendre ?")

#if / else
if in2 == "python" or in2 == "Python" or in2 == "py" or in2 == "Py":
    print("Vous êtes au bon endroit. Poursuivons.")
else : 
    print("Vous vous êtes trompé de questionnaire. Bye")
    exit()

#attribution d'un nombre aléatoire
print("Le nombre qui te sera attribué est " + str(random.randint(0,100)))
print("Le nombre décimale qui te sera attribué est " + str(random.uniform(0,100)))
print("Le nombre qui te sera attribué est " + str(random.randrange(999)))