# My_Sql
My SQL learning's
DDL (DATA DEFINITION language)
>> CREATE TABLE POI_DATA(Name var)
This Command is used to Create the table in the database
The Alter Statement
>> ALTER TABLE databases
>> (ADD/REMOVE/RENAME) COLUMN date_of_perchase DATE; >> only used to add the column in the existing database
The DROP Statement
>> DROP TABLE customers; >> The delete the TABLE customers
The Rename statement
>> RENAME TABLE databases to new_data_base; >> to change the table name
The TRUNCATE Statement
>> TRUNCATE TABLE table_name; >> instead deleting the entire table useing drop we can you truncate 

KEYWORDS
> add
> Create
> alter
> etc.

DATA MANIPULATION LANGUAGE
>> SELECT * FROM SALE;
>> INSERT into table_name (col_name, col_name2) values (1, "2017-10-11");
>> UPDATE tabel_name
   SET col_name = "xxxx"
   Where keyvalue = "xxx"
>> DELETE FROM table_name
   WHERE 
        key_value = xxxxx;
  
 DATA CONTROL Language
 >> GRANT Type_Of_permission ON database_name.table_name TO "username"@"localhost" >> to create a new access to the user
 >> GRANT SELECT on database.table_name TO "frank"@"localhost"; >> will not have access to the DROP, TRUNCATE, ALTER, INSERT and DELETE
 >> GRANT SELECT on database.* TO "frank"@"localhost" >> Will give all the access to manipulate the data
 >> REVOCK 

TRANSACTION CONTRAL Language
When Update the cell value in the database
>> update table_name;
   set col_name = "xxxxxx"
   Where key_value = xxxx
   commit; >> after doing this the data will be udpate and can see by all the user
