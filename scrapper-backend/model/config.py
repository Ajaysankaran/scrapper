from .audit import Audit
from config import database
from sqlalchemy.dialects.postgresql import UUID
import uuid

db = database.database()


class Config(Audit, db.Model):
    __tablename__ = "config"
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    param_id = db.Column(UUID(as_uuid=True))
    dom_path = db.Column(db.VARCHAR(500))
