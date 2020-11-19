#!/usr/bin/python3
from wsgiref.handlers import CGIHandler 
from flask import Flask
import psycopg2  # Libs postgres
import psycopg2.extras

# SGBD configs
DB_HOST = "db.tecnico.ulisboa.pt”; DB_USER="ist98444"; DB_PASSWORD="XXX"
DB_DATABASE = DB_USER
DB_CONNECTION_STRING = "host=%s dbname=%s user=%s password=%s"%
(DB_HOST, DB_DATABASE, DB_USER, DB_PASSWORD)

app = Flask(__name__)
@app.route('/')
def list_accounts():
...a completar... 
return < html-string >
CGIHandler().run(app)
