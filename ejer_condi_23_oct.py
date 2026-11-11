# Ejercicio 2. Aprobación de un examen
# Solicite la calificación obtenida por un alumno en un examen (en escala de 0 a 10). El programa debe imprimir el mensaje "Aprobado" si la calificación es mayor a 8, y "Reprobado" en caso contrario.

# nota_estudiante=float(input("Digite la calificacion de (1 a 10): "))

# if nota_estudiante >8:
#     print("Aprobado")
# else:
#     print("Reprobado")



# Ejercicio 3. Cobro de estacionamiento.
# En un estacionamiento se cobra 2 USD por cada hora o fracción de hora. Solicite el tiempo de permanencia del vehículo en horas y minutos enteros (por ejemplo: 2 horas y 15 minutos). Calcule e imprima el valor total que debe pagar el cliente.
# Aclaración: cualquier fracción de hora (es decir, cualquier cantidad de minutos mayor a 0) se cobra como una hora completa adicional. Ejemplo: 2 horas y 15 minutos se cobran como 3 horas → 6 USD. 

valor_hora= 2
tiempo_horas=int(input(f"Digite el tiempo en horas de :   "))
tiempo_minutos=int(input("Digite el tiempo en minutos de (1 a 60):  "))
valor_a_pagar_horas= tiempo_horas*valor_hora
valor_a_pagar_minutos=2
if tiempo_minutos>=1:
    valor_total=valor_a_pagar_horas
    print(f"Valor a Pagar por las horas: " , valor_a_pagar_horas)
    print(f"Valor a Pagar por minutos: ", valor_a_pagar_minutos)
    print(f"Valor a pagar: ", valor_total+valor_a_pagar_minutos)
else:
    print(f"Total a pagar por hora: ", valor_a_pagar_horas)





# Ejercicio 4. Venta al por mayor con descuento y obsequio
# Un supermercado vende cierto producto por docenas a un precio unitario por docena de 20 USD. Por una promoción se aplican las siguientes reglas según la cantidad de docenas que compre el cliente:
# * Si compra más de 3 docenas: se aplica un descuento del 15 % sobre el monto bruto y, además, se obsequia una unidad del producto por cada docena comprada.
# * Si compra 3 docenas o menos: se aplica un descuento del 10 % sobre el monto bruto y no hay obsequio.
# Salidas esperadas: monto bruto de la compra, valor del descuento, monto neto a pagar y cantidad de unidades de obsequio.

