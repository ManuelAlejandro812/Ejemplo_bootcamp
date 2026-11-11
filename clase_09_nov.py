# x = 1
# while x <= 10:
#     print(x)
#     x += 1

# numeros_pares=2
# while numeros_pares<=20:
#     print(f"el numero {numeros_pares} es par")
#     numeros_pares=numeros_pares+2


# x=10
# while x<20:
#     x=x+1
#     if x % 2==1:
#         print(x)


# Escriba un algoritmo que pida un numero al  usuario y lo muestre  5 veces en pantalla.

# numero=int(input("Digite un numero: "))
# x=1
# while x <6:
#     print (numero)
#     x=x+1

# Escriba un algoritmo que muestra la tabla de multiplicar del 3 del 1 al 10.

# m=1
# while m<=10:
#     print(f"3 x {m} = {3*m}")
#     m=m+1

# tabla=int(input("ingrese la tabla (1 a 10): "))

# i = 1

# while i <= 10:
#     resultado = tabla * i
#     print(f"{tabla} x {i} = {resultado}")
#     i = i + 1


# Escriba un algoritmo que pida un número al usuario y muestre todos los números desde 1 hasta ese número.
# numero=int(input("Digite un numero: "))
# x=1

# while x<=numero:
#     print (x)
#     x=x+1


# pedir un numero al usuario y generar un numero aleatorio, este sera el numero secreto, si este numero es igual al que digito el usuario, saldra mensaje, ganaste, de lo contrario el mensaje sera:"perdiste". el usuario tendra 3 intentos de adivinar el numero

import random
numero_secreto= random.randint(1,10)
print(numero_secreto)

numero=int(input("digite un numero (1 AL 10):  "))

intentos=1
while intentos<=3:
    numero = int(input("intenta nuevamente: "))

    if numero_secreto == numero:
        print("Ganaste")
        intentos=4
    else:
        print("intenta nuevamente")
        
        intentos=intentos+1
