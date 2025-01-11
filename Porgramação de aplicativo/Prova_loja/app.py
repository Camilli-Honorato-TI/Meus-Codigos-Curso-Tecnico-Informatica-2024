# Camilli Vitória Salvaro Honorato
#2-53 - Cedup - Cursando Curso Técnico em Informática

def adicionar(nome, unid_medida, marca):
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

    # Inserção no banco de dados
    sql = "INSERT INTO produtos (nome, unid_medida, marca) VALUES (%s, %s, %s)"
    cursor.execute(sql, (nome, unid_medida, marca))

    conn.commit()

    cursor.close()
    conn.close()
