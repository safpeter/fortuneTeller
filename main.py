from flask import Flask, render_template, request, redirect, url_for
import random
import data_manager


app = Flask(__name__)

saved_data = {}


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        user = request.form['name']
        return redirect(url_for('fortunetelling', user=user))
    return render_template('index.html')


@app.route('/fortunetelling', methods=['GET', 'POST'])
def fortunetelling():
    id1, id2, id3 = random.sample(range(1, 47), 3)
    card_details = data_manager.get_3_cards(id1, id2, id3)
    print(card_details)
    return render_template('prediction.html', card1=card_details[0], card2=card_details[1], card3=card_details[2])


if __name__ == '__main__':
    app.run(debug=True,
            port=7000)
