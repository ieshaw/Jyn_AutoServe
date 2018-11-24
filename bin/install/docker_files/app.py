from flask import Flask
import os
import socket
import subprocess
import datetime

app = Flask(__name__)

@app.route("/")
def hello():

    result = subprocess.run(['./ps.sh'], stdout=subprocess.PIPE)
    output = result.stdout.decode('utf-8')

    html = "<h3>Hello {name}!</h3>" \
            "<b>Current Time:</b> {time}<br/>" \
            "<b></b> ps.sh output:<br/>" \
            "<b></b> {output}<br/>" 
    return html.format(name=os.getenv("NAME", "world"), time=datetime.datetime.now(), output=output)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=443)
