#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

import os

os.system('cls')
print('### Cadastro ###')
nome_fantasia = input("Informe o nome da empressa: ")
razao_social = input("Razão Social: ")
cnpj = input("Informe o CNPJ: ")
n_colaboradores = int(input("Nº Colaboradores: "))
faturamento_anual = float(input("Faturamento Anual: "))

os.system('cls')
print("*********************************************")
print("DADOS DA EMPRESA")
print("*********************************************")
print("Nome Fantasia. . : ", nome_fantasia)
print("Razão Social . . : ", razao_social)
print("CNPJ. . . . . . .: ", cnpj)
print("Nº Colaboradores.: ", n_colaboradores)
print("Faturamento Anuel: R$", faturamento_anual)
print("")
print("____________________________________________")