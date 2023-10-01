from flask_sqlalchemy import SQLAlchemy

db = None


def execute_migrations():
    # liquibase = Pyliquibase(defaultsFile="./migrations/liquibase.properties", logLevel="INFO")
    # liquibase.execute()
    ...


def init_db(app):
    app.config['SQLALCHEMY_DATABASE_URI'] = f'postgresql://postgres:postgres@localhost:5432/scrapper'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
    global db
    db = SQLAlchemy(app)
    print(db)

    # Automatically create Tables
    # from model import Category, CategoryParams, Config
    # with app.app_context():
    #     db.create_all()


def database():
    if db is None:
        raise Exception("Database is not initialized")
    return db



