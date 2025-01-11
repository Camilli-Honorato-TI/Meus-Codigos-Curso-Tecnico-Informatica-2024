#Camilli Honorato
#2-53 - Cedup - Cedup Curso Técnico em Informática
#Feito em: 17/10/2024

import os

def finsish():
    exibir_titulo("#Obrigada por utilizar nosso programa!")
    os.system("pause")

def sair():
    print("\n\n")
    sair = input("Deseja sair do programa (S/N) ? ")
    if sair == "S":
        finsish()
        exit()
    return sair

def separador():
    print()
    print("-------------------------------------------")

def exibir_titulo(texto):
    os.system("cls")
    linha = "---------------------------------------------"
    print(linha)
    print(texto)
    print(linha)