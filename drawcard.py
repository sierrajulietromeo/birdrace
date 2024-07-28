from random import choices
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