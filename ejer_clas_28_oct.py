# Escribe un programa que pida la edad (entero). Si la persona es menor de 18 años, debe mostrar Eres menor de edad y no pedir nada más. Si tiene 18 años o más, debe pedir el dinero que tiene (entero) para pagar una compra de 20000 pesos: si tiene 20000 o más, debe mostrar Compra realizada; si tiene menos, debe mostrar Dinero insuficiente.

# compra = 20000
# edad = int(input("Digite la edad: "))

# if edad < 18:
#     print("Eres menor de edad.")
# if edad >= 18:
#     dinero = float(input("Digite su efectivo para pago: "))
#     if dinero < compra:
#         print("Dinero insuficiente")
#     else:
#         cambio = dinero - compra
#         print(f"Compra exitosa. Su cambio es: {cambio}")


# Enunciado. Escribe un programa que decida si se aprueba un crédito. Primero pide la edad (entero). Si es menor de 18, debe mostrar No cumples la edad mínima. Si tiene 18 años o más, debe preguntar si tiene empleo (si o no). Si no tiene empleo, debe mostrar Necesitas un empleo para solicitar el crédito. Si tiene empleo, debe pedir los ingresos mensuales en pesos (entero): con 2000000 o más debe mostrar Crédito aprobado; con menos, debe mostrar Ingresos insuficientes.

edad = int(input("Digite la edad: "))
ingresos_minimos = 2000000

if edad < 18:
    print("No cumple con la edad minima")
else:
    empleo = input("Tiene empleo (si/no): ")
    if empleo == "no":
        print("Debes solicitar un empleo")
    elif empleo == "si":
        ingresos = float(input("Digite sus ingresos (pesos): "))
        if ingresos >= ingresos_minimos:
            print("Credito Aprobado")
        else:
            print("Credito no aprobado")
    else:
        print("Respuesta no valida")