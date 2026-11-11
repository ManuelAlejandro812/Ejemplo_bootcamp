# Edad de una persona
# clasificar la edad:
# 0 a 5 grupo de niños pequeños
# 6 a 12 grupo de niños grandes
#13 a 17 grupo de adolecentes
# 18 a 65 grupo de adultos
# 66 a 100 adulto mayor

edad=int(input("Digite la edad: "))

if edad >0 and edad <=5:
    print("Es un niño pequeño")
if edad >=6 and edad <=12:
    print("Es un niño grande")
if edad >=13 and edad <=17:
    print("Es un adolecente")
if edad >=18 and edad <=65:
    print("Es un adulto")
if edad >=65 and edad <=100:
    print("Es un adulto mayor")
    
else:
    print("No esta dentro del rango")