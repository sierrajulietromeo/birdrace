from random import choices
from datetime import datetime
from database import default_query 


def draw_phone_card():
    
    phone_query = default_query("SELECT Card, Weight FROM tbl_phone")
    cards, weights = zip(*phone_query)
    selected_card = choices(cards, weights=weights)[0]
    return str(selected_card)


def draw_travel_card():
    
    travel_query = default_query("SELECT Card, Frequency FROM tbl_travel")
    cards, weights = zip(*travel_query)
    selected_card = choices(cards, weights=weights)[0]
    return str(selected_card)


def draw_rarity_card():
   
    try:
        result = default_query("SELECT Card FROM tbl_rarity ORDER BY RANDOM() LIMIT 1")
        return result[0][0]
    except Exception as e:
        print(f"Error selecting rarity card: {e}")
        return None 
    

def draw_arrival_card():
   
    try:
        result = default_query("SELECT Card, Weight FROM tbl_arrival")
        cards, weights = zip(*result)
        selected_card = choices(cards, weights=weights)[0]
        return selected_card
    except Exception as e:
        print(f"Error selecting arrival card: {e}")
        return None     




def count_birds():
  result = default_query("SELECT COUNT(*) FROM tbl_bird")
  return result[0][0]


def get_dropdown_data():
    return default_query("SELECT Name FROM tbl_habitat")



def file_write(bird_spot_name, bird_spot_point, hab_value, player_num):
  
  try:
    now = datetime.now()
    formatted_time = now.strftime("%d/%m/%Y %H:%M:%S")
    with open("spottings.txt", "a") as f:
      f.write(f"{formatted_time} Player: {player_num.value} {bird_spot_name} {bird_spot_point} {hab_value}\n")
  except (IOError, OSError) as e:
    print(f"Error writing to file: {e}")
