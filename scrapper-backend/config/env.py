import os


db_host = os.getenv("DB_HOST", "localhost:27017")
db_name = os.getenv("DB_NAME", "scrapper")