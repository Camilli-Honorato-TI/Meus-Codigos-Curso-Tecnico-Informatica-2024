#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

import lib
import os

sair = 'N'
while sair == 'N':
    os.system('cls')
    print("## MENU ##")
    print("1. Cadastrar Jogador")
    print("2. Listar Jogador")
    print("3. Pesquisar jogador pelo número da camiseta")
    print("4. Sair")
    opcao = int(input("R. "))
    os.system('cls')
    
    if opcao == 1:
        lib.adicionar(input("Nome: "))
    elif opcao == 2:
        lib.listar()
        os.system('pause')
    elif opcao == 3:
        camisa = int(input("Informe o numero da camiseta: "))
        lib.pesquisar(camisa)
        os.system('pause')
    else:
        sair = "S"