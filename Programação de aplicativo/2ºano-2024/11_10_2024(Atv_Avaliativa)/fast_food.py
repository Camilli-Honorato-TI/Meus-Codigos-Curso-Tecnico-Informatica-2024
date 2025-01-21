#Camilli Honorato
#2-53 - Cedup - Cedup Curso Técnico em Informática

valores = []
quantidades = []
descricoes = []
contador = 0
valortotal = 0
soma = 0
i = 0

def calcular_garcom(valor, quantidade):
    return (valor * quantidade) * 0.10

def calcular_comida(valor, quantidade):
    return valor * quantidade

continuar = "S"
print("")
print("------------FAST FOOD------------")
print("")
while continuar == "S":
    descricao = input("Informe a descrição do produto: ")
    descricoes.append(descricao)
    valor = float(input("Informe o valor: "))
    valores.append(valor)
    quantidade = int(input("Informe a quantidade: "))
    quantidades.append(quantidade)
    continuar = input("Deseja continuar (S/N)? ")
    print("")
    print("Pedido Registrado")
    print("---------------------")
    contador = contador + 1
else:
    print("")
    print("-------------------------------------NOTA FISCAL-----------------------------------")
    print("===================================================================================")
    for i in range(contador):
        valor_comida = calcular_comida(valores[i], quantidades[i])
        valor_total = calcular_garcom(valores[i], quantidades[i])
        soma += valor_comida + valor_total  # Acumulando o valor total do pedido
        print("Descrição: ", descricoes[i],
            "| Valor Unit: R$ ", valores[i],
            "| Quantidade: ", quantidades[i],
            "| Valor Total: R$ %.2f" % valor_comida)
        print("====================================================================================")
    
    print("Valor Total (Incluindo Gorjeta): R$ %.2f" % soma)  # Exibindo o valor total final
