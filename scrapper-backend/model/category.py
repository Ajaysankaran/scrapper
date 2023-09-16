import datetime

from config import database
from sqlalchemy.dialects.postgresql import UUID
from .audit import Audit
import uuid

db = database.database()
print("in Models:", db)


class Category(Audit, db.Model):
    __tablename__ = "category"
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    name = db.Column(db.VARCHAR(255))


class CategoryParams(Audit, db.Model):
    __tablename__ = "category_params"
    id = db.Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    category_id = db.Column(UUID(as_uuid=True))
    name = db.Column(db.VARCHAR(255))
    description = db.Column(db.VARCHAR(255))
