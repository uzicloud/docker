from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    import os
    env = os.environ.get('SERVER_ENV')
    return "<span style='color:red'>hello, SERVER_ENV=" + env + "</span>"
