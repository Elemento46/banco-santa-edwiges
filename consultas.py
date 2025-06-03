from database import connect

def clientes_femininos():
    db = connect()
    cursor = db.cursor()
    cursor.execute("SELECT codigo, nome FROM CLIENTES WHERE sexo = 'F'")
    resultado = cursor.fetchall()
    db.close()
    return resultado

def produtos_baixa_quantidade_e_preco():
    db = connect()
    cursor = db.cursor()
    cursor.execute("""
        SELECT codigo, preco 
        FROM PRODUTOS 
        WHERE quantidade < 30 AND preco > 250
    """)
    resultado = cursor.fetchall()
    db.close()
    return resultado

def clientes_codigo_menor_666():
    db = connect()
    cursor = db.cursor()
    cursor.execute("SELECT codigo, nome FROM CLIENTES WHERE codigo < 666")
    resultado = cursor.fetchall()
    db.close()
    return resultado

def produtos_nome_mes():
    db = connect()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM PRODUTOS WHERE nome LIKE 'Mes%'")
    resultado = cursor.fetchall()
    db.close()
    return resultado

def clientes_femininos_rj_es():
    db = connect()
    cursor = db.cursor()
    cursor.execute("""
        SELECT codigo, nome 
        FROM CLIENTES 
        WHERE sexo = 'F' AND (uf = 'RJ' OR uf = 'ES')
    """)
    resultado = cursor.fetchall()
    db.close()
    return resultado

def contar_produtos():
    db = connect()
    cursor = db.cursor()
    cursor.execute("SELECT COUNT(*) AS total_tuplas FROM PRODUTOS")
    resultado = cursor.fetchone()
    db.close()
    return resultado[0]
