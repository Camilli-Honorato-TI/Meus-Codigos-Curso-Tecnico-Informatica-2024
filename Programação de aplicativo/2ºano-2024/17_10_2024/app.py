#Camilli Honorato
#2-53 - Cedup - Cedup Curso Técnico em Informática
#Feito em: 17/10/2024

import lib

sair = "N"
while sair == "N":
    lib.exibir_titulo("# Calculador de Média")
    n1 = int(input("Nota 1: "))
    n2 = int(input("Nota 2: "))
    media = (n1 + n2) /2
    lib.separador()
    print("Média: ", media)
    lib.sair()