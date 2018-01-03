from flask import render_template, request, redirect, url_for, flash, session, Flask
from sqlalchemy import create_engine
from flask.ext.session import Session

app = Flask(__name__)
app.secret_key = 'super secret key'
app.config['SESSION_TYPE'] = 'filesystem'
sess = Session()
sess.init_app(app)


def dbconnect():
    engine = create_engine('mysql://root:@localhost:3306/registration?charset=utf8')
    connection = engine.connect()
    return connection


def dbclose(connection):
    connection.close()
    return

@app.route('/')
@app.route('/index')
def index():
    return render_template("index.html")
	

@app.route('/login',methods=["POST"])
def login():
	if request.method == 'POST':
		if request.form['submit'] == 'submit':
			regnum = request.form['regnum']
			password = request.form['password']
			print (regnum)
			print (password)
			
			connection = dbconnect()
			query="SELECT registerNumber,password FROM details"
			result = connection.execute(query)
			
			for row in result:
				if int(regnum) == row['registerNumber']:
					query="SELECT password FROM details WHERE registerNumber=%s"
					result1 = connection.execute(query,int(regnum))
					for row in result1:
						if row['password'] == password:
							return render_template("success.html")
						else:
							flash("You entered the wrong password")
							return redirect(url_for('index'))
			
			
				
			message= "You are not registered"
			flash(message)
			return redirect(url_for('index'))
		
			
			
if __name__ == "__main__":
    app.run(debug=True, threaded=True)