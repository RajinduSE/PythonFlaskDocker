from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    name = os.getenv("NAME", "World")
    return f'Hello, {name}!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
