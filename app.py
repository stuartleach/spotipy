from fastapi import FastAPI
import psycopg2
from configparser import ConfigParser
import pandas as pd


def config(filename="database.ini", section="postgresql"):
    parser = ConfigParser()
    parser.read(filename)

    db = {}

    if parser.has_section(section):
        params = parser.items(section)
        for param in params:
            db[param[0]] = param[1]

    else:
        raise ('Section {0} not found in the {1} file'.format(section, filename))

    return db


params = config()

conn = psycopg2.connect(**params)

cur = conn.cursor()

cur.execute("""SELECT * FROM spotify_user""")

def create_pandas_table(sql_query, database=conn):
    table = pd.read_sql_query(sql_query, database)
    return table

user_info = create_pandas_table("SELECT ")

query_results = cur.fetchall()
print(query_results)

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/hello/{name}")
async def say_hello(name: str):
    return {"message": f"Hello {name}"}
