#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

import os
import listar
import app

opcao = 0
sair = "N"
while sair == "N":
    os.system("cls")
    print("## MENU ##")
    print("1. Cadastro de Produtos")
    print("2. Pesquisar Produtos por Nome")
    print("3. Sair")
    opcao = int(input("R. "))
    os.system("cls")

    if opcao == 1:
        nomes = input("Nome do produto: ")
        unidade_medida = input("Unidade Medida (2 letras, ex: ml): ")
        if len(unidade_medida) > 2:
            print("Unidade de medida inválida. Deve ter apenas 2 letras.")
            break # Para o codigo 
        marcas = input("Marca: ")
        app.adicionar(nomes, unidade_medida, marcas)

    elif opcao == 2:
        procura = input("Digite o nome do produto que deseja pesquisar: ")
        listar.listar(procura)

    else:
        sair = "S"

    os.system("pause")
