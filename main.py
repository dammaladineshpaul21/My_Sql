import mysql.connector
import pandas as pd
try:
<<<<<<< HEAD
<<<<<<< HEAD
    mydb = mysql.connector.connect(user='root', password='Munna#21021995',
                                            host='127.0.0.1', database="poidata")
    mycursor = mydb.cursor()
    get_data = pd.read_sql("select * from poidetails", mydb)
    df = pd.DataFrame(get_data)
    df["name"].fillna("No College", inplace=True)
    print(mycursor)
=======
=======
>>>>>>> main
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



<<<<<<< HEAD
>>>>>>> 97c9a34 (Update new file with new set of code)
=======
>>>>>>> main

