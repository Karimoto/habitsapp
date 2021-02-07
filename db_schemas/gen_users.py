from werkzeug.security import generate_password_hash, check_password_hash
import random_name_generator as rng
import random
lst = ['Lucy', 'Marian', 'Vanf', 'Wandal','Riko','Rumcajs','Szef','Kartoteka','Policja','Grzybi','Technoswinia','Karku','Spejson','ferder','kamil','jacek','karolina','szermierka','dyniowy','okiennica','konraaaaaaadz','petrol','dragon','stivek']

maile = ['gmail','interia','hotmail','tlen','urr','random']

kraje = ['pl','rus','de','to','cze']


for i in range(1,100):
	nick = random.choice(lst)
	mail = random.choice(maile)
	kraje = random.choice(kraje)
	
	nick = nick+str(random.randint(1, 500))
	email = nick+str(random.randint(1, 2000))+'@'+mail+'.'+kraje

	w = generate_password_hash(str(i))

	points = random.randint(1, 1000)

	lista = [nick,email,w,str(points)]
	
	lista = ["'"+i+"'" for i in lista[0:3] ] 
	lista.append(str(points))
	stringg = ",".join(lista)

	print('(',stringg,')',',')
