from dotenv import load_dotenv
import os
import requests

load_dotenv()

API_KEY = os.environ.get('NUTHATCH_API_KEY')
BASE_URL = "https://nuthatch.lastelm.software/v2/"

def fetch_bird_data(bird_name, page=1, page_size=1, region="Western Europe", has_image="true"):
    headers = {
        'accept': 'application/json',
        'API-Key': API_KEY
    }
    params = {
        'page': page,
        'pageSize': page_size,
        'name': bird_name,
        'region' : region,
        'hasImg' : has_image,
        'operator': 'AND'  
        
    }
   
    try:
        url = f"{BASE_URL}birds"
        response = requests.get(url, headers=headers, params=params)
        response.raise_for_status()
        data = response.json()
    
        if data and 'entities' in data and len(data['entities']) > 0:
            bird_info = data['entities'][0]
            image_url = None
            if 'images' in bird_info and len(bird_info['images']) > 0:
                image_url = bird_info['images'][0] 
            return {'name': bird_info.get('name'),  
                    'scientific_name': bird_info.get('sciName'), 
                    'family': bird_info.get('family'),
                    'image_url': image_url,
                    'conservation_status': bird_info.get('status')} 
        else:
            return {'error': f"No information found for '{bird_name}' with the specified criteria."}
    except requests.exceptions.RequestException as e:
        return {'error': f"Error fetching data: {e}"}
    except KeyError:
        return {'error': "Error parsing API response."}


# print(fetch_bird_data("Gannet"))