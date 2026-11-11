# Una persona vende un producto en línea. El programa pide el precio de venta, el costo de compra, el porcentaje de comisión de la plataforma y el costo del envío que asume el vendedor. Calcula la comisión en pesos, el costo total y la ganancia neta por unidad. Luego pide cuántas unidades vendió en el mes y muestra la ganancia mensual.




# precio_venta=float(input("Ingrese el precio de venta: "))
# costo_compra=float(input("Ingrese el costo de compra: "))
# comision_plataforma=float(input("Ingrese la comision el valor solo de (1 a 100: )"))
# costo_envio=float(input("Ingrese el costo del envio: "))

# comision_por_unidad=precio_venta*(comision_plataforma/100)

# costo_total_unidad=costo_compra+comision_por_unidad+costo_envio

# ganancia_unitaria=precio_venta-costo_compra

# unidades_vendidad_mes=int(input("Digite en numero de unidades vendidas en el mes: "))

# ganancia_mensual=ganancia_unitaria+unidades_vendidad_mes

# print()
# print("=="*50)
# print(f"Precio venta producto     ${precio_venta:,.1f}")
# print(f"Precio compra producto    ${costo_compra:,.1f}")
# print(f"Comision plataforma.      ${comision_plataforma:,.1f}")
# print(f"Ganancia neta por unidad  ${ganancia_unitaria:,.1f}")
# print(f"Ganancia mensual          ${ganancia_mensual:,.1f}")
# print("=="*50)
# print()


# Una tienda vende tres productos. El programa pide el nombre y precio unitario de cada uno, junto con la cantidad comprada. Calcula el subtotal, el IVA del 19% y el total a pagar, y los muestra como una factura.

nombre_producto1=str(input("Ingrese el nombre del producto uno: "))
nombre_producto2=str(input("Ingrese el nombre del producto dos: "))
nombre_producto3=str(input("Ingrese el nombre del producto tres: "))

precio_producto1=float(input("Ingrese el precio del producto uno: "))
precio_producto2=float(input("Ingrese el precio del producto dos: "))
precio_producto3=float(input("Ingrese el precio del producto tres: "))

cantidad_comprada_p1=int(input("Ingrese la cantidad comprada del producto uno: "))
cantidad_comprada_p2=int(input("Ingrese la cantidad comprada del producto dos: "))
cantidad_comprada_p3=int(input("Ingrese la cantidad comprada del producto tres: "))

iva=(19/100)
iva_p1=iva*precio_producto1
iva_p2=iva*precio_producto2
iva_p3=iva*precio_producto3

subtotal_p1=precio_producto1+iva_p1
subtotal_p2=precio_producto2+iva_p1
subtotal_p3=precio_producto3+iva_p1

total=subtotal_p1+subtotal_p2+subtotal_p3


print()
print("=="*20)

print(f"Nombre del producto 1: ", nombre_producto1)
print(f"cantidad_comprada_p1: ", cantidad_comprada_p1)
print(f"Precio de venta: ", precio_producto1)
print("Iva", iva_p1)
print("Subtotal: ", subtotal_p1)
print()
print("=="*20)

print(f"cantidad_comprada_p2: ", cantidad_comprada_p2)
print(f"Precio de venta: ", precio_producto2)
print(f"Nombre del producto 2: ", nombre_producto2)
print("Iva", iva_p2)
print("Subtotal: ", subtotal_p2)
print()
print("=="*20)


print(f"Nombre del producto 3: ", nombre_producto3)
print(f"Nombre del producto 3: ", nombre_producto3)
print(f"Precio de venta: ", precio_producto3)
print("Iva", iva_p3)
print("Subtotal: ", subtotal_p3)
print()
print("=="*20)

print("TOTAL FACTURA", total)

