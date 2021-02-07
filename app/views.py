from flask import Blueprint, render_template, request, session, redirect, url_for, flash
from . import db
from .models import Users,Items,User_inventory,Form_questions, User_tasks, Tasks
from flask_login import current_user
import random


main = Blueprint('main',__name__)

@main.route('/')
def index():
    if current_user.is_authenticated:
        return redirect(url_for('main.dashboard'))

    #pat = Users.query.filter_by(nickname='patryk').first()
    #print(pat.nickname)
   # pat = User_inventory.query.filter_by(item_id=1).first()
    #print(pat.item_id,pat.login_id)

    return render_template('index.html')



@main.route('/dashboard')
def dashboard():
    if current_user.is_authenticated:
        items_list = current_user.login_id # User_inventory.query.filter_by(login_id=current_user.login_id).first() 
        items_list = list()
        tasks_list = list()
        item_shop  = list()
        completed = list()
        # some sphagetti code to show user's items
        for i in User_inventory.query.filter_by(login_id=current_user.login_id).all():
            items_list.append(Items.query.filter_by(item_id=i.item_id).first())

        for i in User_tasks.query.filter_by(login_id=current_user.login_id).all():
            tasks_list.append(Tasks.query.filter_by(task_id=i.task_id).first())
            completed.append(i.completed)

        exclude = list()
        for i in items_list:
            exclude.append(i.item_id)
        exclude = tuple(exclude)

        item_shop = Items.query.filter(~Items.item_id.in_(exclude)).all()


        top5 = Users.query.order_by(Users.points.desc()).limit(5).all()

        return render_template('dashboard.html',items_list=items_list,tasks_list=tasks_list,item_shop=item_shop, top5=top5, completed=completed)
    else:
        return redirect(url_for('auth.login'))


@main.route('/dashboard', methods=['POST'])
def task_update():
    done = request.form.get('done')
    if done:
        res = User_tasks.query.filter((User_tasks.task_id == done) & (User_tasks.login_id == current_user.login_id)).first()
        
        if res.completed == 0:
            task_info = Tasks.query.filter(Tasks.task_id==done).first()
            current_user.points = current_user.points + task_info.points * res.significance
        
        if res.completed == 1:
            flash('Już wykonałeś dzisiaj te zadanie!')
            
        res.completed = 1

        db.session.commit()
        return redirect(url_for('main.dashboard'))

        
    deletion = request.form.get('deletion')
    if deletion:
        rem = User_tasks.query.filter((User_tasks.task_id == deletion) & (User_tasks.login_id == current_user.login_id))
        rem.delete()
        db.session.commit()
        return redirect(url_for('main.dashboard'))


    transaction = request.form.get('transaction')
    if transaction:
        #sprawdz czy ma pieniadze
        koszt = Items.query.filter(Items.item_id==transaction).first().cost
        if current_user.points >= koszt:
            current_user.points=current_user.points-koszt
            new_item = User_inventory(login_id=current_user.login_id,item_id=int(transaction))

            db.session.add(new_item)
            db.session.commit()

            return redirect(url_for('main.dashboard'))

        return f'Nie stać Cię na ten przedmiot!'



@main.route('/entry')
def entry():
    #test entry sprawdza czy nie ma czasem juz wypelnionej ankiety
    test_entry = User_tasks.query.filter_by(login_id=current_user.login_id).first()
    if test_entry:
        return redirect(url_for('main.dashboard'))


    def simple_random():
        return random.sample(Form_questions.query.all(),k=5)

    obj = simple_random()

    session['question_id'] = [(i.task_id,i.negative) for i in obj]

    return render_template('entry.html', start=obj)


@main.route('/entry', methods=['POST'])
def entry_post():
    survey = [request.form.get('survey'+str(i)) for i in range(0,5)]
    survey = [float(x) if x is not None else 0 for x in survey]

    option = session['question_id']
    counter = 0
    final = list()
    for i in option:
        if i[1]==1:
            survey[counter] = survey[counter]* (-1)
        if survey[counter]>0:
            final.append((i[0],survey[counter]))
        counter = counter+1
    


    for j in final:
        new_task = User_tasks(login_id=current_user.login_id,task_id=j[0],significance=j[1],completed=0)
        db.session.add(new_task)


    db.session.commit()


    return redirect(url_for('main.dashboard'))


@main.route('/all_tasks')
def all_tasks():
    if current_user.is_authenticated:
        user_tasks = User_tasks.query.filter_by(login_id=current_user.login_id).all()
        
        exclude = list()
        for i in user_tasks:
            exclude.append(i.task_id)
        exclude = tuple(exclude)

        res = Tasks.query.filter(~Tasks.task_id.in_(exclude)).all()

        return render_template('all_tasks.html', left_tasks=res)
    else:
        return redirect(url_for('auth.login'))

@main.route('/all_tasks', methods=['POST'] )
def add_task():
    a = request.form.get('tasks')

    new_task = User_tasks(login_id=current_user.login_id,task_id=int(a),significance=1,completed=0)
    db.session.add(new_task)
    db.session.commit()
    return redirect(url_for('main.all_tasks'))


@main.route('/reset_blabla')
def reset():
    if current_user.is_authenticated:
        if(current_user.nickname =='patryk'):
            reset_tasks = User_tasks.query.filter_by(completed='1').all()
            if reset_tasks:
                for i in reset_tasks:
                    i.completed = 0
                db.session.commit()

    return f'xd: {reset_tasks}'
