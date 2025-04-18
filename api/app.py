from flask import Flask, jsonify
import mysql.connector
import os
import time

app = Flask(__name__)

def get_db_connection():
    for _ in range(10):
        try:
            return mysql.connector.connect(
                host='db',
                user=os.getenv("MYSQL_USER"),
                password=os.getenv("MYSQL_PASSWORD"),
                database=os.getenv("MYSQL_DATABASE")
            )
        except mysql.connector.Error as err:
            print("⏳ En attente de MySQL...", err)
            time.sleep(3)
    raise Exception("❌ Impossible de se connecter à MySQL après plusieurs tentatives.")

@app.route("/utilisateurs", methods=["GET"])
def get_users():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM utilisateurs")
    users = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(users)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
