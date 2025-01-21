#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

C = float(input("Informe a temperatura em Cº:"))

def celsius_para_fahrenheit():
    return (C * 1.8) + 32

print("A temperatura em Fº é de: %.2f" % celsius_para_fahrenheit())