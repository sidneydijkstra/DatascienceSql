import os
import time
from dotenv import load_dotenv

import MySQLdb
import sqlparse

# setup sql files
sqlRunOrder = [
    # create and fill staging database
    #"raw_db_create.sql",
    #"raw_db_fill.sql",

    # create real database
    "real_db_create.sql",

    # fill real database (here we made sure the creation is happening in the right order)
    "real_db_create_business.sql",
    "real_db_create_movie.sql",
    "real_db_create_serie.sql",
    "real_db_create_genre.sql",
    "real_db_create_country.sql",
    "real_db_create_biography.sql",
    "real_db_create_movie_locations.sql",
    "real_db_create_movie_rating.sql",
    "real_db_create_movie_runtime.sql",
    "real_db_create_serie_locations.sql",
    "real_db_create_serie_rating.sql",
    "real_db_create_serie_runtime.sql",

    "real_db_create_actor.sql",
    "real_db_create_actress.sql",
    "real_db_create_writer.sql"
]

# load .env variables
load_dotenv()
dbHost = os.getenv('DATABASE_IP')
dbPort = os.getenv('DATABASE_PORT')
dbUser = os.getenv('DATABASE_USERNAME')
dbPass = os.getenv('DATABASE_PASSWORD')

def main():
    # check if variables exist
    if dbHost is None or dbPort is None or dbUser is None or dbPass is None:
        print("ERROR: Please add database values to .env file!")
        return

    try:
        # make connection to database
        db = MySQLdb.connect(host = dbHost, port = int(dbPort), user = dbUser, passwd = dbPass, autocommit="True")
        cursor = db.cursor()
        totalTime = 0

        # select file from array
        for i in range(0, len(sqlRunOrder)):
            print("START - [{0}][00:00:00] - [{1}/{2}] {3}".format(time.strftime("%H:%M:%S", time.localtime()), i+1, len(sqlRunOrder), sqlRunOrder[i]))

            startTime = time.time()

            # split sql commands
            sql = open(sqlRunOrder[i]).read()
            sqlPart = sqlparse.split(sql)
            for part in sqlPart:
                if part.strip() ==  '':
                    continue

                # execute sql command
                cursor.execute(part)

            # fetch all to make sure command is finished
            cursor.fetchall()

            timer = time.time() - startTime
            totalTime += timer
            print("END   - [{0}][{1}] - [{2}/{3}] {4}".format(time.strftime("%H:%M:%S", time.localtime()), time.strftime("%H:%M:%S", time.gmtime(timer)), i+1, len(sqlRunOrder), sqlRunOrder[i]))

        # close connection
        print("Total time: {0}".format(time.strftime("%H:%M:%S", time.gmtime(totalTime))))
        db.close()
    except Exception as e:
        print("ERROR: {0}".format(str(e)))

if __name__ == "__main__":
    main()
