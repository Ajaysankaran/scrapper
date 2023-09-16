from sqlalchemy import Column, DateTime, VARCHAR
import datetime


class Audit(object):
    created_by = Column(VARCHAR(255), default="SYSTEM")
    created_date = Column(DateTime, default=datetime.datetime.now())
    last_modified_by = Column(VARCHAR(255), default="SYSTEM")
    last_modified_date = Column(DateTime, default=datetime.datetime.now())
