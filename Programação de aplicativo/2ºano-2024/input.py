#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

nomes = []
continuar = "S"
while continuar == "S":
    nome = input("Nome: ")
    nomes.append(nome)
    continuar = input("Deseja continuar? (S/N)")
else:
    for i in nomes:
        print("Devedor: ", i)