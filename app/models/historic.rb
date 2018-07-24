class Historic < ApplicationRecord
  belongs_to :vehicle
  belongs_to :event
  belongs_to :workshop
end
