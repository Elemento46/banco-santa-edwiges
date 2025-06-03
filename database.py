import mysql.connector

def connect():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="Alex##265480",
        database="santa_edwiges"
    )
