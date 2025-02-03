import requests
import os
from constants import *
import pprint

def get_detail_for_person(linkden_profile_url,test:bool=False):

    if test:
        profile_ulr="https://gist.githubusercontent.com/narendrasfo/fc745114be21afc5fcf2630ca1e93fdf/raw/8ffe51df51c740ebc3a79ac0716454997ce242cd/narendra_linkedin.json"
        res=requests.get(profile_ulr,timeout=10)
    else:
        params={
            "apikey":os.environ["SCRAPIN_API_KEY"],
            "linkedInUrl": linkden_profile_url,

        }
        res=requests.get(SCRAP_API_URL,
                     params=params,
                     timeout=10)


    data=res.json().get("person")
    return data


data =get_detail_for_person("https://www.linkedin.com/in/narendraparmar/",True)
print(data)