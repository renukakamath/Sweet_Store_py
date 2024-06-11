from flask import Flask 
from public import public
from admin import admin
from customer import customer
from staff import staff
from courier import courier

app=Flask(__name__)

app.secret_key='key'

app.register_blueprint(public)
app.register_blueprint(admin,url_prefix='/admin')
app.register_blueprint(customer,url_prefix='/customer')
app.register_blueprint(staff,url_prefix='/staff')
app.register_blueprint(courier,url_prefix='/courier')


app.run(debug=True,port=5030) 