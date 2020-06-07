from guizero import App, MenuBar, TextBox, Text, PushButton, Picture, Window, Combo, Box
from datetime import datetime
import sqlite3
from random import randint, choices

#today = date.today()

def open_habitat_window():

    app.hide() # hide main window 

    #Habitat window code and widgets
    habitat_window = Window(app, title="Habitat")
    title_box = Box(habitat_window, align="top", width="fill")
    main_box = Box(habitat_window, layout="grid")
    picture = Picture(title_box, image="images/geograph-1619354-by-N-Chadwick.png")
    Text(title_box, text="")
    arrival_Button = PushButton(title_box, text='Take an arrival card', command=take_arrival_card, args=[habitat_window])
    rarity_Button = PushButton(title_box, text='Take a rarity card', command=take_rarity_card, args=[habitat_window])
    Text(title_box, text="")
    habitatList = (habitats(db))
    
    Text(main_box, text="Player #", grid=[1,1], align="right")
    player_num = Combo(main_box, options=[1, 2, 3, 4, 5, 6], grid=[2,1], align="left")
    Text(main_box, text="Select habitat:", grid=[1,2], align="right")
    habitat_dropdown = Combo(main_box, options=habitatList, grid=[2,2], align="left") 
    Text(main_box, text="Number of birds spotted: ",  grid=[1,3], align="right")
    num_spottings = Combo(main_box, options=[1, 2, 3, 4, 5, 6], grid=[2,3], align="left") 
    Text(main_box, text="",  grid=[1,4])
    confirm_Button = PushButton(main_box, text='Start Spotting!', command=habitat_bird, args=[habitat_window, player_num, habitat_dropdown,num_spottings], grid=[2,5])
    cancel_Button = PushButton(main_box, text='Cancel', command=cancel_habitat_window, args=[habitat_window], grid=[1,5])


## Counts the number of birds in the database. This is used to select a random number to select a random bird.
def count_birds():

    num_birds = default_query('SELECT COUNT(*) FROM Bird')
    num_birds = [numb[0] for numb in num_birds]  # Get number out of list
    num_bird = int(num_birds[0])  # cast to int in this case
    return num_bird

## Function called to select a random bird
def random_bird(habitat_window, habitat_dropdown, num_spottings):

    for i in range(1,int(num_spottings.value)+1):

        bird_num = str(randint(1,count_birds()))
        bird_query = 'SELECT name, points FROM Bird WHERE number is ' + bird_num
        spot_bird(habitat_window, bird_query)
        
    
def habitat_bird(habitat_window, player_num, habitat_dropdown, num_spottings):

    
    hab_value = habitat_concatenate(habitat_dropdown)

    for i in range(1,int(num_spottings.value)+1):
       
        bird_query = 'SELECT Bird.Number, Bird.Name, Bird.Points FROM Bird INNER JOIN Frequency ON Bird.Number=Frequency.BirdNum WHERE ' + hab_value + '<>0'
        bird_spot = default_query(bird_query)
        #Get the frequency data for the habitat/birds from the db. Store in var called bird_freq
        bird_query = 'SELECT '+ hab_value + ' FROM Frequency INNER JOIN Bird ON Bird.Number=Frequency.BirdNum WHERE ' + hab_value + '<>0'
        bird_freq = default_query(bird_query)
        bird_freq = [freq[0] for freq in bird_freq]
        
        #Select a bird based on the frequency. (Based on the number of cards in the deck!) #using random.choices
        bird_spott = choices(bird_spot,
                      bird_freq,
                      k=1
                     )

        bird_spot_numb = [spot[0] for spot in bird_spott]
        bird_spot_name = [spot[1] for spot in bird_spott]
        bird_spot_point = [spot[2] for spot in bird_spott]
        bird_spot_numb = str(bird_spot_numb[0])  # cast to str in this case
        bird_spot_name = str(bird_spot_name[0])  # cast to str in this case
        bird_spot_point = str(bird_spot_point[0])  # cast to str in this case

        #bird_spott = bird_spot[bird_num] 
        habitat_window.info("Success", "Spot " + str(i) + "\n" + "You spot a " + bird_spot_name + " (#" + bird_spot_numb + ")\n" + bird_spot_point + "pts")

        #write spot to a file
        file_write(bird_spot_name, bird_spot_point, hab_value, player_num)

        
        

#deals with habitats that have a space in them        
def habitat_concatenate(habitat_dropdown):

    hab_value = habitat_dropdown.value 

    if (' ' in hab_value) == True:
        hab_value = hab_value.replace(" ", "")
    return hab_value
        

def spot_bird(habitat_window, bird_query):
        bird_spot = default_query(bird_query)
        bird_spott = [spot[0] for spot in bird_spot]
        bird_spotted = str(bird_spott[0])  # cast to str in this case
        bird_pts = [spot[1] for spot in bird_spot]
        bird_points = str(bird_pts[0])  # cast to str in this case
        
        habitat_window.info("Success", "You spot a " + bird_spotted + "\n" + "\n" + bird_points + "pts")


def file_write(bird_spot_name, bird_spot_point, hab_value, player_num):
    now = datetime.now()
    now = now.strftime("%d/%m/%Y %H:%M:%S")
    f = open("spottings.txt", "a")
    f.write(str(now)+" Player: " + player_num.value + " " + bird_spot_name + " " + bird_spot_point + " " + hab_value + "\n")
    f.close()


def create_connection():
    db = sqlite3.connect('birdrace')
    return db

def close_connection(db):
    db.close()


def default_query(query):
    cursor = db.cursor()
    cursor.execute(query)
    results = cursor.fetchall()
    return results

def take_rarity_card(habitat_window):

    rarity_query = 'SELECT Card FROM Rarity'
    rarity_query = default_query(rarity_query)
    rarity_card = [arr[0] for arr in rarity_query]
    
    
    rare_card = str(rarity_card[randint(0,len(rarity_card)-1)])
                    
    app.info("Rarity", rare_card)



def make_phone_call():

    phone_query = 'SELECT * FROM Phone'
    phone_query = default_query(phone_query)
    phone_card = [arr[0] for arr in phone_query]
    
    phone_weight = [arr[1] for arr in phone_query]
    
    ph_card = choices(phone_card,
                      phone_weight,
                      k=1
                     )
    ph_card = str(ph_card[0])  # cast to str in this case
               
    app.info("Phone Call", ph_card)



def take_travel_card():
    
    travel_query = 'SELECT * FROM Travel'
    travel_query = default_query(travel_query)
    travel_card = [arr[0] for arr in travel_query]
    
    travel_weight = [arr[1] for arr in travel_query]
    
    tr_card = choices(travel_card,
                      travel_weight,
                      k=1
                     )
    tr_card = str(tr_card[0])  # cast to str in this case
               
    app.info("Travel Card", tr_card)



def take_arrival_card(habitat_window):
    
    arrival_query = 'SELECT * FROM Arrival'
    arrival_query = default_query(arrival_query)
    arrival_card = [arr[0] for arr in arrival_query]
    
    arr_weight = [arr[1] for arr in arrival_query]
    
    arr_card = choices(arrival_card,
                      arr_weight,
                      k=1
                     )
    arr_card = str(arr_card[0])  # cast to str in this case
               
    habitat_window.info("Arrival", arr_card)
    


def cancel_habitat_window(habitat_window):
    habitat_window.hide()
    app.show()

# Populates the habitat combo box
def habitats(db):
    
    query = "SELECT Name FROM Habitat ORDER BY Name ASC;"
    habitat_result = default_query(query)
    habitat_result = [hab_result[0] for hab_result in habitat_result]
    return habitat_result


def quit_funct(db):
  close_connection(db)  
  app.destroy()


db = create_connection()


    

app = App(title='Bill Oddie Bird Race Game')




# Main menu widgets
Text(app, text="")
picture = Picture(app, image="images/box.png")
Text(app, text="")
phonecall_btn = PushButton(app, text='Make a phone call', command=make_phone_call)
travel_btn = PushButton(app, text='Take a travel card', command=take_travel_card)
habitat_btn = PushButton(app, text='Visit Habitat', command=open_habitat_window)
quit_btn = PushButton(app, text='Quit', command=quit_funct, args=[db])






app.display()


