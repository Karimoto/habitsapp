from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager, current_user
from .credentials import DB_URI
db = SQLAlchemy()
login_manager = LoginManager()


def create_app():
    app = Flask(__name__)
    db.metadata.clear()

    #app.secret_key = 'sekret'
    app.config['SECRET_KEY'] = 'mysecret'
    app.config['SQLALCHEMY_DATABASE_URI'] = DB_URI
    db.init_app(app)

    login_manager.login_view = 'auth.login'
    login_manager.init_app(app)

    from .models import Users
    @login_manager.user_loader
    def load_user(user_id):
        return Users.query.get(int(user_id))


    # blueprint for auth routes in our app
    from .auth import auth as auth_blueprint
    app.register_blueprint(auth_blueprint)


    

    from .views import main
    app.register_blueprint(main)

    return app