#imports 
from flask import Flask, render_template, request
from helper import *
import secrets

app = Flask(__name__)
app.secret_key = secrets.token_urlsafe(32) 



@app.route('/', methods=['GET', 'POST'])
def index():
    if "phone" in request.form:
        return render_template('/phone.html', data=draw_phone_card())
    elif "travel" in request.form:
        return render_template('/travel.html', data=draw_travel_card())
    elif "habitat" in request.form:
        return render_template('/habitat.html', options=get_dropdown_data()) 
    else:
        return render_template('/index.html')



@app.route('/phone', methods=['GET', 'POST'])
def phone():
    if "again" in request.form:
        return render_template('/phone.html', data=draw_phone_card())
    else:
        return render_template('/index.html')  


@app.route('/travel', methods=['GET', 'POST'])
def travel():
    if "again" in request.form:
        return render_template('/travel.html', data=draw_travel_card())
    else:
        return render_template('/index.html') 


 
@app.route('/rarity', methods=['GET', 'POST'])
def rarity():
    if "again" in request.form:
        return render_template('/rarity.html', data=draw_rarity_card())
    else:
        return render_template('/habitat.html', options=get_dropdown_data())    



@app.route('/arrival', methods=['GET', 'POST'])
def arrival():
    if "again" in request.form:
        return render_template('/arrival.html', data=draw_arrival_card())
    else:
        return render_template('/habitat.html', options=get_dropdown_data())        


@app.route('/habitat', methods=['GET', 'POST'])
def habitat():
    if "arrival" in request.form:
        return render_template('/arrival.html', data=draw_arrival_card())
    elif "rarity" in request.form:
        return render_template('/rarity.html', data=draw_rarity_card())
    elif "spot" in request.form:
        player_number = request.form['player']
        player_habitat = request.form['habitat']
        num_birds = int(request.form['num_birds'])


        return render_template('/spot.html', data=spot_bird(player_number, player_habitat, num_birds) )
    else:
        return render_template('/index.html') 
    

@app.route('/spot', methods=['POST', 'GET'])
def spot():

    return render_template('/habitat.html', options=get_dropdown_data())


if __name__ == '__main__':
    app.run(debug=True)






