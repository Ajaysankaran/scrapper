from .audit import Audit
from config import database
import uuid
from sqlalchemy.dialects.postgresql import UUID

db = database.database()


class Application(Audit, db.Model):
    __tablename__ = "application"
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    category_id = db.Column(UUID(as_uuid=True))
    app_name = db.Column(db.VARCHAR(255))
    description = db.Column(db.VARCHAR(500))


class ApplicationConfig(Audit, db.Model):
    __tablename__ = "app_config"
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    app_id = db.Column(UUID(as_uuid=True))
    config_name = db.Column(db.VARCHAR(255))
    action_name = db.Column(db.VARCHAR(255))
    config_value = db.Column(db.VARCHAR(255))