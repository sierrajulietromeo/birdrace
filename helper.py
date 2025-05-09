from random import choices
from datetime import datetime
from database import default_query 


def draw_phone_card():
    try:
        phone_query = default_query("SELECT Card, Weight FROM tbl_phone")
        cards, weights = zip(*phone_query)
        selected_card = choices(cards, weights=weights)[0]
        return selected_card
    except:
        return "Error drawing phone card"
       


def draw_travel_card():
    try:
        travel_query = default_query("SELECT Card, Frequency FROM tbl_travel")
        cards, weights = zip(*travel_query)
        selected_card = choices(cards, weights=weights)[0]
        return selected_card
    except:
        return "Error drawing travel card"


def draw_rarity_card():
    try:
        result = default_query("SELECT Card FROM tbl_rarity ORDER BY RANDOM() LIMIT 1")
        file_write(result[0][0], "RARE" , "RARE") # Update possible here - more elegant way needed
        return result[0][0]
    except:
        return "Error drawing rarity card" 
    

def draw_arrival_card():
    try:
        result = default_query("SELECT Card, Weight FROM tbl_arrival")
        cards, weights = zip(*result)
        selected_card = choices(cards, weights=weights)[0]
        return selected_card
    except:
        return "Error drawing arrival card"      


def count_birds():
    try:
        result = default_query("SELECT COUNT(*) FROM tbl_bird")
        return result[0][0]
    except:
        return None


def get_dropdown_data():
    return default_query("SELECT Name FROM tbl_habitat")


def spot_bird(player_num, habitat_dropdown, num_spottings):
    # Combine habitat dropdown construction
    habitat_condition = habitat_dropdown + ' <> 0'
    
    spotted_birds = []
    for _ in range(1, num_spottings + 1):
        # Single query with combined condition
        bird_query = f"""
            SELECT tbl_bird.Number, tbl_bird.Name, tbl_bird.Points
            FROM tbl_bird
            INNER JOIN tbl_frequency ON tbl_bird.Number = tbl_frequency.Num
            WHERE {habitat_condition}
        """

        try:
            # Fetch bird data and frequencies
            bird_data = default_query(bird_query)
            bird_frequencies = [row[0] for row in default_query(f"SELECT {habitat_dropdown} FROM tbl_frequency INNER JOIN tbl_bird ON tbl_bird.Number=tbl_frequency.Num WHERE {habitat_condition}")]

            # Select bird based on frequency using random.choices
            spotted_bird = choices(bird_data, weights=bird_frequencies, k=1)

            # Extract bird details from the chosen bird data
            bird_number, bird_name, bird_points = spotted_bird[0]

            spotted_birds.append([bird_number, bird_name, bird_points])
            
            file_write(bird_name, bird_points, player_num, habitat_dropdown)
        except:
            pass

    return spotted_birds


def file_write(bird_name, bird_points, player_num, habitat_dropdown="RARE"):
  try:
    now = datetime.now()
    formatted_time = now.strftime("%d/%m/%Y %H:%M:%S")
    with open("spottings.txt", "a") as f:
      f.write(f"{formatted_time} Player: {player_num} {bird_name} {bird_points} {habitat_dropdown}\n")
  except (IOError, OSError) as e:
    print(f"Error writing to file: {e}")
