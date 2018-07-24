class CreateVehicleBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_benefits do |t|
      t.date :delivery
      t.date :devolution
      t.integer :use_fds
      t.references :vehicle, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
