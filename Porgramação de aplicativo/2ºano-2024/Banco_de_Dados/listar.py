import mysql.connector

# Configuraçao com banco de dados
db_config = {
    'user': 'root',
    'password': '',
    'host': 'localhost',
    'database': 'atv01_08_11_2024',
    'port': '3306'
}

# Conenctando ao banco de dados
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

#Executando a consulta para listar todos os nomes
cursor.execute("SELECT nome, email FROM pessoa")
resultados = cursor.fetchall()

# Exibe a lista de e-mails
for r in resultados:
    print("Nome: ", r[0])
    print("E-mail: ", r[0])
    
# Fechando a conexão
cursor.close()
conn.close()