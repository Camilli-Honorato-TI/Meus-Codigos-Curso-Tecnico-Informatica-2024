#Camilli Honorato
#2-53 - Cedup - Cedup Curso Técnico em Informática
#Feito em: 10/10/2024

idades = []
valores = []
continuar = "S"
contador = 0
soma = 0
def calcular_valor_total(valor,idade):
    if idade < 18:
        return valor / 2
    else:
        return valor

while continuar == "S":
    idade = int(input("Idade: "))
    valor = float(input("Valor do ingresso: "))
    idades.append(idade)
    valores.append(valor)
    contador = contador + 1
    continuar = input("Deseja cotinuar? S/N ")
else:
    for i in range(contador):
        print("=============================")
        valor_total = calcular_valor_total(valores[i], idades[i])
        soma = soma + valor_total
        print("Idade: ", idades[i],
              "Valor do ingresso: ", valor_total)
        print("=============================")
print("Valor Total: ", soma)
