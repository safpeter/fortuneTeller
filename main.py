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
    id1, id2, id3, id4, id5, id6, id7, id8, id9, id10, id11, id12 = random.sample(range(1, 47), 12)
    card_details = data_manager.get_12_cards(id1, id2, id3, id4, id5, id6, id7, id8, id9, id10, id11, id12)
    return render_template('prediction.html', card1=card_details[0], card2=card_details[1], card3=card_details[2],
                           card4=card_details[3], card5=card_details[4], card6=card_details[5], card7=card_details[6],
                           card8=card_details[7], card9=card_details[8], card10=card_details[9], card11=card_details[10],
                           card12=card_details[11])


if __name__ == '__main__':
    app.run(debug=True,
            port=7000)
