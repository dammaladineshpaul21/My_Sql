import mysql.connector
import pandas as pd
try:
    mydb = mysql.connector.connect(user='root', password='Munna#21021995',
                                            host='127.0.0.1', database="poidata")
    mycursor = mydb.cursor()
    get_data = pd.read_sql("select * from poidetails", mydb)
    df = pd.DataFrame(get_data)
    df["name"].fillna("No College", inplace=True)
    print(mycursor)

except Exception as e:
    print(e)
