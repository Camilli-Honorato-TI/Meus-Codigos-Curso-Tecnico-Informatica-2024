#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

dolar =5.44
euro = 6.07

def converter(cotacao,real):
    return real/ cotacao

real = float(input("Real: "))
print("Dolar: ", converter(dolar,real))
print("Euro: ", converter(euro, real))