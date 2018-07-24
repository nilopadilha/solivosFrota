class Vehicle < ApplicationRecord
  belongs_to :user
  belongs_to :client
  has_many :return_vehicles
  has_many :feature_vehicles
  has_many :historics  
end
