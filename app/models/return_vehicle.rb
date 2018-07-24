class ReturnVehicle < ApplicationRecord
  belongs_to :vehicle
  belongs_to :workshop
  belongs_to :reserve
  belongs_to :status

end
