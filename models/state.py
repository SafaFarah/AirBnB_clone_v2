#!/usr/bin/python3
""" State Module for HBNB project """
from models.base_model import BaseModel
from models.city import City
from models import storage
import models

class State(BaseModel):
    """ State class """
    name = ""

    @property
    def cities(self):
        """Return the list of City from storage linked to current State"""
        all_cities = storage.all(City)
        state_cities = [city for city in all_cities.values() if city.state_id == self.id]
        return state_cities
