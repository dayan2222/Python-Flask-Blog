# Python-Flask-Blog
Python-Flask Based First Project. Having CRUD operations.  

First thing first install this in a directory<br>      
     $ pip install flask-mysqldb is used to import the libray
<br>
<br>
Some Useful Functions and Libraries which are used in throughout this ptoject<br> 
   
      from flask import Flask, render_template, request, session,redirect
      from flask_sqlalchemy import SQLAlchemy
      from datetime import datetime
      from werkzeug import secure_filename
      from flask_mail import Mail
      import json
      import math
      import os
### For Email Connectivity
      app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/database_name'
      app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
