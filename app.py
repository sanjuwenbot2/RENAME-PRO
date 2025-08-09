from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '@HxBots'

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))  # Use Koyeb's assigned port
    app.run(host="0.0.0.0", port=port)
