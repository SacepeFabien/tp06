from flask import Flask, render_template, request, jsonify
import requests

app = Flask(__name__)


# Define your endpoint to render the chatbot interface
@app.route('/home')
def chat():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(port=5001)
