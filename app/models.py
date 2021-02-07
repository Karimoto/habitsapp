from . import db
from sqlalchemy.orm import relationship
from flask_login import UserMixin


class Item_types(db.Model):
    __tablename__= 'item_types'
    type = db.Column(db.String, primary_key=True)


class Categories(db.Model):
    __tablename__ = 'categories'
    category = db.Column(db.String, primary_key=True)



class Users(db.Model,UserMixin):
    __tablename__ = 'users'
    login_id = db.Column(db.Integer, primary_key=True)
    nickname = db.Column(db.String, unique=True, nullable=False)
    password = db.Column(db.String, nullable=False)
    email = db.Column(db.String, unique=True, nullable=False)
    points = db.Column(db.Float, nullable=False)
    inventory = db.relationship('Items', secondary = 'user_inventory')
    tasks = db.relationship('Tasks',secondary = 'user_tasks')

    def get_id(self):
           return (self.login_id)

class Items(db.Model):
    __tablename__ = 'items'
    item_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, unique=True, nullable=False)
    description = db.Column(db.String, unique=True, nullable=False)
    type = db.Column(db.String, db.ForeignKey('item_types.type'))
    cost = db.Column(db.Float, nullable=False)
    img_source = db.Column(db.Text, nullable=False)
    owner = db.relationship('Users', secondary = 'user_inventory')


class User_inventory(db.Model):
    __tablename__ = 'user_inventory'
    login_id = db.Column(db.Integer, db.ForeignKey('users.login_id'), primary_key=True)
    item_id = db.Column(db.Integer, db.ForeignKey('items.item_id'), primary_key=True)



class Tasks(db.Model):
    __tablename__='tasks'
    task_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, unique=True, nullable=False)
    description = db.Column(db.String)
    category = db.Column(db.String, db.ForeignKey('categories.category'), nullable=False)
    points = db.Column(db.Float, nullable=False)


class User_tasks(db.Model):
    __tablename__ = 'user_tasks'
    login_id = db.Column(db.Integer, db.ForeignKey('users.login_id'), primary_key=True)
    task_id = db.Column(db.Integer, db.ForeignKey('tasks.task_id'), primary_key=True)
    significance = db.Column(db.Float, nullable=False)
    completed = db.Column(db.Boolean,nullable=False,default=False)


class Form_questions(db.Model):
    __tablename__='form_questions'
    question_id = db.Column(db.Integer, primary_key=True)
    task_id = db.Column(db.Integer, db.ForeignKey('tasks.task_id'), nullable=False)
    question = db.Column(db.Text, nullable=False)
    negative = db.Column(db.Boolean, nullable=False, default=False)









