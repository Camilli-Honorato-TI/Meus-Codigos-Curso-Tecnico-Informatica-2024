import mysql.connector

# Configuração com banco de dados
db_config = {
    'user': 'root',
    'password': '',
    'host': 'localhost',
    'database': 'atv01_08_11_2024',
    'port': '3306',
    'collaction': 'utf8mb4_unicode_ci',
    'charset': 'utf8mb4'
}

nome = input("Nome: ")
email = input("Email: ")

# Conectando ao banco de dados
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# Inserindo na tabela
sql = "INSERT INTO pessoa(nome,email) VALUES (%s,%s)"
cursor.execute(sql,(nome,email))

#Comit para salvar a inserção
conn.commit()

#Fechando a conexão
cursor.close()
conn.close()