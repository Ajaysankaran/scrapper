from flask import blueprints

product_blueprint = blueprints.Blueprint('product_blueprint', __name__)


@product_blueprint.route("/")
def test_api():
    return f"product API is working {__name__}"
