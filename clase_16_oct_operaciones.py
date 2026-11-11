# resultado=10+8/2


# print(resultado)

# r=20-10*5/2+4*2
# # r=20-50/2+4*2
# # r=20-25+4*2
# # r=20-25+4*2
# # r=20-25+8
# # r=3
# print(r)


# nombre_usuario=str(input("Digite su nombre: "))
# edad=str(input("Digite su edad: "))




# 4. Facturación Básica de Punto de Venta: Un comercio requiere calcular la factura de un cliente. Solicita el precio unitario de un producto y la cantidad comprada. Calcula el subtotal, aplica el IVA (19%) y muestra el subtotal, el impuesto y el total a pagar. 

# precio_unitario=int(input("Digite el precio del producto: "))
# cantidad=int(input("Digite la cantidad del productos: "))
# subtotal= precio_unitario*cantidad
# iva=subtotal+(subtotal*0.19)
# total=subtotal+iva
# print("*"*40)
# print("Cantidad: ", cantidad, "\nSubtotal: ", subtotal, "\nIVA", iva, "\nTOTAL: ","$", total)



# 5. Cálculo de Nómina Básica (Devengados y Deducibles): Una empresa necesita calcular la liquidación mensual de un empleado. Solicita el valor del salario diario y los días trabajados en el mes. Calcula el salario bruto, resta un 4% para pensión y un 4% para salud sobre el bruto, e imprime el neto a pagar. 

salario_diario=float(input("Digite salario diario: "))
dias_trabajados=int(input("Ingrese los dias trabajados: "))
salario_bruto=salario_diario*dias_trabajados
pension= salario_bruto*0.04
salud=salario_bruto*0.04

Salario_total=salario_bruto-pension-salud


print("+"*40)
print(f"Salario bruto: $ {salario_bruto:,.0f}")
print(f"Pension:       $ {pension:,.0f}")
print(f"Salud:         $ {salud:,.0f}")
print(f"Salario total: $ {Salario_total:,.0f}")
