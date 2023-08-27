from flask import Flask
from config import init_db, execute_migrations
from routes import product_blueprint

app = None


def create_app():
    global app
    app = Flask(__name__ or "scrapper")
    print(f'Creating app')
    execute_migrations()
    init_db()
    app.register_blueprint(product_blueprint)
    return app


if __name__ == "__main__":
    app = create_app()
    print(f"Starting {__name__}")
    app.run(host="localhost", port=5000)
