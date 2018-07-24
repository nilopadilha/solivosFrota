class CreateReturnVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :return_vehicles do |t|
      t.date :withdrawal_date
      t.date :return_date
      t.string :withdrawal_meleage
      t.string :withdrawal_fuel
      t.string :bodywork
      t.string :tires
      t.text :note
      t.references :status, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
