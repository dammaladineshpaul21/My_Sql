import mysql.connector
import pandas as pd
try:
    cnx = mysql.connector.connect(user="root", password="Munna#21021995", host='127.0.0.1', port=3306, database="poidata")
    hold_db = cnx.cursor()
    # hold_db.execute("Create database if not exists poidata;")
    # # hold_db.execute("Show Databases;")
    # hold_db.execute("use poidata;")
    # hold_db.execute("Create table if not exists poi_details(poi_name char(50));")
    getdata = hold_db.fetchall()
    for i in getdata:
        print(i)
except Exception as err:
    print(err)