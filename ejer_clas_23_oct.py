#Precio de dos productos si el total de la compra es mayor a 100 dolares se hara un descuento del 10%, de lo contrario no tiene descuento. Mostrar el total sin descuento, el descuento y el total despues del descuento.


# precio_producto1=float(input("Digite el precio del producto uno: "))
# precio_producto2=float(input("Digite el precio del producto dos: "))

# total_compra=precio_producto1+precio_producto2

# if total_compra >100:
#     total_descuento=total_compra*10/100
#     total_pago=total_compra-total_descuento
#     print(f"Total compra $ {total_compra:,.1f}")
#     print(f"Total descuento $ {total_descuento:,.1f}")
#     print(f"Total Pago ${total_pago:.1f}")

# else:
#     print("Descuento: 0")
#     print(f"total_compra {total_compra:,.1f}")

#Un supermercado realiza una promoción mediante la cual el cliente recibe un descuento dependiendo de un número entero entre 1 y 100 que se escoge al azar. Solicite el monto total de la compra (en USD) y el número que le tocó al cliente. Aplique las siguientes reglas:
# * Si el número es menor a 74: el descuento es del 15 % sobre el total de la compra.
# * Si el número es mayor o igual a 74: el descuento es del 20 % sobre el total de la compra.
# * Salida esperada: valor del descuento aplicado y total a pagar.

import random
monto_tota_compra = float(input("Digite el total de la compra: "))
print()
numero_ganador=random.randint(1, 100)
print((numero_ganador))

if numero_ganador<74:
    descuento=monto_tota_compra*15/100
    total_pago=monto_tota_compra-descuento
    print("Descuento 15%", descuento)
    print("Total pago: ", total_pago)

else:
    descuento=monto_tota_compra*20/100
    total_pago=monto_tota_compra-descuento
    print("Descuento 20%, ", descuento)
    print("Total pago: ", total_pago)
    