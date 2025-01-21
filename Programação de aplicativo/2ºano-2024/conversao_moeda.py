#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática
#Feito em: 27/09/2024

quantidade = float(input("Quantos reais você quer converter? "))
tipo = input("Você quer converter para Euro ou dolar? (E\D)")

def conversao_moeda():
    if tipo == 'E':
        return quantidade / 6.0681
    else:
        return quantidade / 5.4376


if tipo == 'E':
    print("---Conversão---")
    print("")
    print("Quantidade em reais -> ", quantidade)
    print("Quantdade em Euro -> %.2f"% conversao_moeda())
else:
    print("---Conversão---")
    print("")
    print("Quantidade em reais -> ", quantidade)
    print("Quantdade em Dolar -> %.2f"% conversao_moeda())