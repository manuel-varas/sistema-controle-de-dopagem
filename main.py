from os import system
system('cls')
import mysql.connector as mysql

conexao = mysql.connect(
    host="localhost",
    user="root",
    passwd="M@taturu.1981",
    database="db_financeiro"
)

cursor = conexao.cursor()

cursor.execute("select*from clientes")
resposta = cursor.fetchall()

for i in resposta:
    print(i)