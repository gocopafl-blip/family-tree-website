import os
from flask import Flask, render_template

# Initialize the Flask application
app = Flask(__name__)

# Define the main route
@app.route('/')
def dashboard():
    # This function will render the dashboard.html file
    return render_template('dashboard.html')

# Run the application
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))