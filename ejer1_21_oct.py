# Café Pixel vende sándwiches y jugos por internet. Su propietaria necesita calcular el costo de un pedido, aplicar un descuento a los productos y agregar el valor del domicilio.

# Datos que debe solicitar el programa
# * Nombre del cliente • Precio unitario del jugo
# * Cantidad de sándwiches • Porcentaje de descuento
# * Precio unitario del sándwich • Costo fijo del domicilio
# * Cantidad de jugos.

nombre_cliente=str(input("Digite el nombre: \n"))
precio_jugo=float(input("Digite el precio unitario del jugo: \n"))
cantidad_jugos=int(input("Didgite la cantidad de jugos: \n"))
precio_sandwich=float(input("Digite el precio unitario del sandwich: \n"))
cantidad_sandwich=int(input("Digite la cantidad de sandwchi: \n"))
porcentaje_descuento=float(input("Ingrese el descuento de (1 a 100): \n"))
costo_domi=(float(input("Digite el costo del domicilio: \n")))

valor_total_jugo=precio_jugo*cantidad_jugos
valor_total_sandwich=precio_sandwich*cantidad_sandwich
total_pedido=valor_total_jugo+valor_total_sandwich
total_descuento=total_pedido*porcentaje_descuento/100
total_pagar=total_pedido-total_descuento+costo_domi


print()
print("Nombre del cliente: ", nombre_cliente)
print(f"{cantidad_jugos}               ${valor_total_jugo}")
print(f"{cantidad_sandwich}            ${valor_total_sandwich}")
print(f"descuento:                     ${total_descuento}")
print(f"Subtotal:                      ${total_pedido}")
print(f"Total a pagar:                 ${total_pagar}")