#true
#false

# x=True

# m=10
# n=5
# r=2
# p=12

# if m>n


# En una institución educativa se realizará un torneo académico exclusivo para estudiantes que cumplan ciertos requisitos. Para poder participar, el estudiante debe tener una nota promedio igual o superior a 4.0 y una asistencia mínima del 85%. Sin embargo, existe una excepción: si el estudiante ha ganado algún reconocimiento académico durante el año, puede participar aunque no cumpla uno de los dos requisitos anteriores. El sistema debe evaluar si el estudiante puede participar o no en el torneo según esta información. Se deben pedir los datos necesarios y mostrar un mensaje claro indicando si puede o no participar.

#promedio >=4.0 ---> pedir
#asistencia minima >85%

#reconocimiento--->puede asistir == "si"
#asistencia >=85%
#promedio <= 4.0

#reconocimiento--->puede asistir == "si"
#asistencia <= 85%
#promedio >= 4.0

nota1=float(input("Digite la nota del 1er parcial: "))
nota2=float(input("Digite la nota del 2do parcial: "))
nota3=float(input("Digite la nota del final : "))
reconocimiento= "SI"

nota_promedio=nota1+nota2+nota3/3

asistencia_estudiante=float(input("ingrese el porcentaje de asistencia de (1 a 100): "))

if nota_promedio >=4.0 and asistencia_estudiante >= 85:
    print("Puede participar en el torneo /n")

else:
    reconocimiento_estudiante=input("El estudiante tiene algun reconocimiento? (SI/NO): ")
    if reconocimiento_estudiante == reconocimiento:
        print("El estudiante puede participar del torneo")
    else:
        print("EL estudiante no puede participar del torneo")
