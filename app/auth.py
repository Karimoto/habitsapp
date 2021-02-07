from flask import Blueprint, render_template, request, redirect, flash, url_for
from .models import Users
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import login_user, logout_user, login_required, current_user
from sqlalchemy import or_
from . import db

auth = Blueprint('auth', __name__)


@auth.route('/login')
def login():
    if current_user.is_authenticated:
        return redirect(url_for('main.dashboard'))
    return render_template('login.html')

@auth.route('/login', methods = ['POST'] )
def login_post():
    login = request.form.get('login')
    password = request.form.get('password')

    user = Users.query.filter_by(nickname=login).first()

    #check_password_hash(user.password, password)
    if not user or not check_password_hash(user.password, password):
        flash('Niepoprawne dane!')
        return redirect(url_for('auth.login'))

    login_user(user)
    return redirect(url_for('main.dashboard'))


@auth.route('/sign_up')
def sign_up():
    if current_user.is_authenticated:
        return redirect(url_for('main.dashboard'))

    return render_template('sign_up.html')


@auth.route('/sign_up', methods=['POST'])
def sign_up_post():
    email = request.form.get('email')
    login = request.form.get('login')
    password = request.form.get('password')


    user = Users.query.filter_by(email=email).first()
    user2 = Users.query.filter_by(nickname=login).first()

    if user:
        flash('Email address already exists')
        return redirect(url_for('auth.sign_up'))
    
    if user2:
        flash('Login already exists')
        return redirect(url_for('auth.sign_up'))




    new_user = Users(email=email, nickname=login, password=generate_password_hash(password, method='sha256'), points=0)

    # add the new user to the database
    db.session.add(new_user)
    db.session.commit()

    user = Users.query.filter_by(nickname=login).first()
    login_user(user)

    return redirect(url_for('main.entry'))


@auth.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('main.index'))
