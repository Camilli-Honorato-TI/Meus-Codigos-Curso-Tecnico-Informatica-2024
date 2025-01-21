#Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

def listar(nome_produto):
    import mysql.connector

    db_config = {
        'user': 'root',
        'password': '',
        'host': 'localhost',
        'database': 'banco_loja',
        'port': '3306'
    }

    # Conexão com o banco de dados
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    # Consulta para buscar apenas o produto escolhido
    sql = "SELECT nome, unid_medida, marca FROM produtos WHERE nome = %s"
    cursor.execute(sql, (nome_produto,))  # Passando o nome como parâmetro do %s (usando a lógico do codigo app.py)
    resultados = cursor.fetchall()

    if resultados: # Se tiver algum resultado ele ira seguir nesse laço
        for r in resultados:
            print("")
            print("***************************")
            print("Nome: ", r[0])
            print("Unidade de Medida: ", r[1])
            print("Marca: ", r[2])
            print("***************************")
            print("")
    else: # Caso vazio, ele entrara neste laço
        print("Produto não encontrado.")

    cursor.close()
    conn.close()
