#!/usr/bin/python3
""" State Module for HBNB project """
from models.base_model import BaseModel


class State(BaseModel):
    """ State class """
    name = ""

    if environ.get('HBNB_TYPE_STORAGE') != 'db':
        @property
        def cities(self):
            """Return the list of City from storage linked to current State"""
            cities = []
            for city in models.storage.all(City).values():
                if city.state_id == self.id:
                    cities.append(city)
            return cities
