Produtos = [ "Computador Desktop", "Laptop", "Monitor LED",
"Teclado Mecânico", "Mouse Óptico", "Impressora Multifuncional",
"Webcam", "Fone de Ouvido com Microfone", "Pendrive", "HD Externo", "Roteador Wi-Fi", "Placa de Vídeo",
"Memória RAM",  "Fonte de Alimentação", "Gabinete" ]

Estoques = [ 487, 434, 1, 3, 332, 123, 23, 2, 3, 44, 343, 6, 777, 56 , 4 ]

print("Controle estoque")
print("Situaçao: Baixo")
for i in Estoques:
    if i < 5:
        print(Estoques[i], ": ", Produtos[i])