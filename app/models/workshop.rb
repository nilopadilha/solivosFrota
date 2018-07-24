class Workshop < ApplicationRecord
   enum status: [:active, :inactive]
  has_one :address
  has_many :historic   
  has_many :return_vehicle
end
