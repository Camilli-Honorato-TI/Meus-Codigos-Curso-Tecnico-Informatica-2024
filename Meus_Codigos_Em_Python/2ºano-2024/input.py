#Camilli Honorato
#2-53 - Cedup - Cedup Curso Técnico em Informática
#Feito em: 19/09/2024

nomes = []
continuar = "S"
while continuar == "S":
    nome = input("Nome: ")
    nomes.append(nome)
    continuar = input("Deseja continuar? (S/N)")
else:
    for i in nomes:
        print("Devedor: ", i)
