class Voiture: #recette de la voiture
    def __init__(self, cv, marque, portes) : #instance de l'objet avec entrer d'un parametre

        #attribus d'instance
        self.cv = cv
        self.marque = marque 
        self.porte = portes 

#variable
voiture1 = Voiture (150, "Peugeot", 5)

print (voiture1.cv)
