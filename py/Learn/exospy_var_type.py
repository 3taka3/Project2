#! /bin/python3
print("\u2764")

coeur = "\u2764"
print(coeur)

#Affichage de l'ID d'un élément
print ("l'Id de l'element coeur")
print (id(coeur))

#Affichage du type d'un élément
print ("Création de l'element six")
six = "6"
print ("type initial")
print (type(six))

#Changement du type d'un élément - de manière permanente
print ("changement de son type")
six = int(six)
print ("nouveau type")
print (type(six))



##
#exercice 1 : 
# Passer des valeurs dans la bonne classe pour les additionner : concatener
# Variabiliser les inputs pour affichage dynamique

n1 = 30
n2 = 30
n3 = 15
n4 = "10"

a = "J'ai une classe de " + str(n1) + " elèves."
b = str(n2) + " + " + n4 + " est égale à " + str(n3)
c = n3 + int(n4)
d = "L'addition de " + str(n2) + " + " + n4 + " est égale à " + str(n2 + int(n4))

print(a)
print(b)
print(c)
print(d)



#Modification d'une chaine de caractère n

a = " Bonjour à vous "
b = "1,2,3,4,5"
c = "123444" 

#casse
print(a.upper())
print(a.lower())
print(a.capitalize())
print(a.title())

#élements
print(a.replace("jour","soir"))
print(a.replace("jour","soir").replace("vous","toi"))
print(a.replace("à vous",""))
print(a.strip())
print(a.strip(" rouj à souv"))
print(a.rstrip())

#assemblage/desassemblage
print(b) 
print(b.split(","))
print(".".join(b.split(",")))
print("+".join(b.split(",")))

#homogeneisé des suites de nombres: 
for i in range (21):
    print(i) 
print("avec zfill")
for i in range (21):
    print(str(i).zfill(3))

#verification type de caractère 
print(a.islower())
print(a.istitle())
print(a.isupper())
print(c.isdigit())

#verification de l'emplacement ou de l'occurence
print(str(c).count("4"))
print(a.find("jour"))
print(a.find("find"))
print(a.endswith("vous "))

#modulo
print(12%9)
#division entière
print(10/3)
print(10//3) 
#puissance
print(2**4)

#incrémentation 
a=1
b=2
print(a) 
a+=1
print(a) 

#comparaison
print(a is b)
print (a==b)

#ajout des variables avec types différents

#print(f")
prenom = "Margot" 
age = 27 
print(f"Je m'appelle {prenom} et j'ai {age} ans.".format(age))

#.format(v=1)
bonjour="Je m'appelle {prenom} et j'ai {age} ans."
bienvenue = bonjour.format(prenom="Marie", age="33")
print(bienvenue)


#Exercice 2 : calcul avec des inputs:

in1 = input('Entrez un premier nombre :')
in2 = input('Entrez un deuxième nombre :')
#possibilité d'ajouter int(input) directement au niveau de la variable

print("Le résultat de l'addition de " + str(in1) + " avec " + str(in2) + " est égal à " + str(int(in1)+int(in2)))
print("Le résultat de la multiplication de " + str(in1) + " avec " + str(in2) + " est égal à " + str(int(in1)*int(in2)))
print("Le résultat de la soustraction de " + str(in1) + " avec " + str(in2) + " est égal à " + str(int(in1)-int(in2)))

#techplussimple avec printf 
print(f"Le résultat de la division de {in1} avec {in2} est égal à {int(in1) /int(in2)}")





