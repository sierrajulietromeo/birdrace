from guizero import App, MenuBar, TextBox, Text, PushButton, Picture, Window, Combo
from datetime import datetime
import sqlite3
from random import randint, choices

#today = date.today()

def open_habitat_window():

    app.hide() # hide main window 

    #Habitat window code and widgets
    habitat_window = Window(app, title="Habitat")
    Text(habitat_window, text="")
    Text(habitat_window, text="You have arrived!")
    picture = Picture(habitat_window, image="images/geograph-1619354-by-N-Chadwick.png")
    
    Text(habitat_window, text="")
    arrival_Button = PushButton(habitat_window, text='Take an arrival card', command=take_arrival_card)
    habitatList = (habitats(db))
    Text(habitat_window, text="Select habitat")
    habitat_dropdown = Combo(habitat_window, options=habitatList) 
    Text(habitat_window, text="Number of birds spotted: ")
    num_spottings = Combo(habitat_window, options=[3, 1, 2, 4, 5, 6]) 
    confirm_Button = PushButton(habitat_window, text='Start Spotting!', command=habitat_bird, args=[habitat_window, habitat_dropdown,num_spottings])
    cancel_Button = PushButton(habitat_window, text='Cancel', command=cancel_habitat_window, args=[habitat_window])


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
        
    
def habitat_bird(habitat_window, habitat_dropdown, num_spottings):

    
    hab_value = habitat_concatenate(habitat_dropdown)

    for i in range(1,int(num_spottings.value)+1):
       
        bird_query = 'SELECT Bird.Name, Bird.Points FROM Bird INNER JOIN Frequency ON Bird.Number=Frequency.BirdNum WHERE ' + hab_value + '<>0'
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

        bird_spot_name = [spot[0] for spot in bird_spott]
        bird_spot_point = [spot[1] for spot in bird_spott]
        bird_spot_name = str(bird_spot_name[0])  # cast to str in this case
        bird_spot_point = str(bird_spot_point[0])  # cast to str in this case

        #bird_spott = bird_spot[bird_num] 
        habitat_window.info("Success", "You spot a " + bird_spot_name + "\n" + "\n" + bird_spot_point + "pts")

        #write spot to a file
        file_write(bird_spot_name, bird_spot_point, hab_value)

        
        

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


def file_write(bird_spot_name, bird_spot_point, hab_value):
    now = datetime.now()
    now = now.strftime("%d/%m/%Y %H:%M:%S")
    f = open("spottings.txt", "a")
    f.write(str(now)+" " + bird_spot_name + " " + bird_spot_point + " " + hab_value + "\n")
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

def make_phone_call():
    pass


def take_travel_card():
    pass

def take_arrival_card():
    pass

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


