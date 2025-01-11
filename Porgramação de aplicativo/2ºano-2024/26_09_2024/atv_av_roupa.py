#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática
#Feito em: 26/09/2024

def valot_toal(valor_prod, quantidade):
    return valor_prod * quantidade
roupas = []
valor_prods = []
quantidades = []
escolha = 'S'
repeticao = 0
while escolha =='S':
    roupa = input("Informe o nome da roupa: ")
    roupas.append(roupa)
    valor_prod = float(input("Informe o valor da roupa: "))
    valor_prods.append(valor_prod)
    quantidade = int(input("Informe a quantidade: "))
    quantidades.append(quantidade)
    escolha = input("Deseja continuar? (S/N)")
    repeticao = repeticao + 1
else:
    for i in range(repeticao):
        print("Blusa: ", roupas[i],
              "Quantidade: ",quantidades[i],
                " Valor: ", valor_prods[i])

    
    

    