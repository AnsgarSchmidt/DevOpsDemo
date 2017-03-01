import os
import time
import random
import string
from flask import Flask

app = Flask(__name__)

@app.route('/')
def Welcome():
    return app.send_static_file('index.html')

@app.route('/version')
def version():
    return "1"

@app.route('/add/<level>')
def load(level):
    mem = []
    for i in range(int(level)):
      for j in range(int(level)):
         mem.append(''.join(random.choice(string.lowercase) for i in range(int(level))))
    #time.sleep(23)
    return "done"

if __name__ == "__main__":
    port = os.getenv('PORT', '5000')
    app.run(host='0.0.0.0', port=int(port), processes=10)
