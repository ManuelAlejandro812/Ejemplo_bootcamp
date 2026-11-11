# En un juego de preguntas a las que se responde Si o No gana quien responda correctamente las tres preguntas.
# Si se responde mal a cualquiera de ellas ya no se pregunta la siguiente y termina el juego. Las preguntas son:
#  ¿Colon descubrió América?
#  ¿La independencia de México fue en el año 1810?
#  ¿The Doors fue un grupo de rock Americano?



pregunta1 = input("Colon descubrio America? (si/no): ")
if pregunta1 == "si":
    pregunta2 = input("La independencia de Mexico fue en el año 1810? (si/no): ")
    if pregunta2 == "si":
        pregunta3 = input("The Doors fue un grupo de rock americano? (si/no) : ")
        if pregunta3 == "si":
            print("Ganaste")
        else:
            print("Perdiste")
    else:
        print("Perdiste")
else:
    print("Perdiste")