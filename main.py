from flask import Flask, render_template, request, redirect, url_for


app = Flask(__name__)

saved_data = {}


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        saved_data['name'] = request.form['name']
        return render_template('prediction.html')
    return render_template('index.html')


if __name__ == '__main__':
    app.run(debug=True,
            port=7000)
