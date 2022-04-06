
# Datascience SQL
This is a python project with sql scripts for setting up the database used by the web application. For parsing the data to files that can be used by this python project we redirect you to [\[this\]](https://github.com/Medooosa/Csharp-Parser) C# project. When the setup of the database is complete using we will redirect you to [\[this\]](https://github.com/sidneydijkstra/DatascienceWeb/) node.js project.

### Dependencies  
This list contains all the dependencies used by the project.
```
+-- dotenv
+-- mysqldb
+-- sqlparse
```  
All these dependencies can be install with pip install commands:
```
pip install python-dotenv
pip install mysqlclient
pip install sqlparse
```

### Env
A connection with the database is established using the variables in the .env file. Create this file and add these parameters to connect with the database:
```
DATABASE_IP=
DATABASE_PORT=
DATABASE_USERNAME=
DATABASE_PASSWORD=
```

### Run
For running the project we can use a easy python command and need a folder containing all the data files. The location of this folder can be changed in the file 'raw_db_fill.sql'.

Command:
```
python __init__.py
```
