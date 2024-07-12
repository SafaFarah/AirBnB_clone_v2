#!/usr/bin/python3
""" State Module for HBNB project """
from os import environ
from models.base_model import BaseModel
from models.city import City
import models

class State(BaseModel):
    """ State class """
    name = ""

    if environ.get('HBNB_TYPE_STORAGE') != 'db':
        @property
        def cities(self):
            """Return the list of City from storage linked to current State"""
            all_cities = storage.all(City)
            state_cities = [city for city in all_cities.values() if city.state_id == self.id]
            return state_cities
