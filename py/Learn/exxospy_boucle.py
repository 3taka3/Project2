import time 

for i in ["J'entends","pas","les","rageux"] : 
    print(i)

for i in "Margot":
    print(i)

#itération avec incrementation et limitation à 10
i = 0
while i < 10 : 
    print("Encore")
    i += 1 

#itération dont la fréquence est posée - enleveé car genant dans script**

#while True : 
    #print("Sauvegarde en cours...")
    #time.sleep()

#itération avec validation de continue - enlevé car génant dans script

#continuer = "o"
#while continuer =="o" : 
    #print ("Ok on continue...")
    #continuer = input("Voulez-vous continuer ? o/n :")


#itération sur liste qui affiche uniquement les élements en lettre
liste = ["1", "4", "25", "Pierre", "3", "Pol"]
for element in liste:
    if element.isdigit():
        continue 
    print(element)

#itération sur liste qui affiche uniquement les nombres positifs 
liste = [-1,-4,-3,-2,-1, 0, 1 ,2, 3, 4, 5,]
nbrs_positifs = []
for i in liste : 
    if i > 0:
        #ajout à la nouvelle liste 
        nbrs_positifs.append(i)
#ou 
#plus ajout de 2 à chaque element 
nbrs_negatifs = [i+2 for i in liste if i<0]

print(nbrs_positifs)
print(nbrs_negatifs )

listeb = [1, 23, 54, 49, 38, 20, 47, 11]
#recupere les nombres étant pairs : i%2 == 0
nbrs_pairs = [i for i in listeb if i%2 ==0 ]

print(listeb)
print(nbrs_pairs)

#double les nombres de la liste range
nombres = range(10)
nbrs_x2 = [i*2 for i in nombres]

print(nombres)
print(nbrs_x2)

#inverse les nombres pairs en négatifs 
nombres2 = range(100)
nbrs_pairsenneg = [-i for i in nombres2 if i%2==0]

print(nombres2)
print(nbrs_pairsenneg)

#else (si pairs : négatif, reste inchangé)
nombres3 = range(-10,10)
nbrs_inverse = [i if i%2==0 else -i for i in nombres3]

print(nombres3)
print (nbrs_inverse)

#Exercice d'incrémentation d'une liste 
liste = ["U1", "U2", "U3", "U4", "U5", "H6", "U7", "U8", "U9", "U10"]
for element in liste :
    print(element)

#correction 
for i in range(10):
    print(f"Utilisateur {i+1}")

#reverse
mot = "Python"
print(list(mot))
reversed(mot)
for i in reversed(mot) :
    print(i) 
