# -*- condig: utf-8
import os
import socket
from flask import Flask, json


app = Flask(__name__)


@app.route('/')
def index():
    server_name = os.environ.get('SERVICE_NAME', 'simple-server')
    host_name = socket.gethostname()
    return json.jsonify(
            server_name=server_name,
            host_name=host_name
            )

