class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :year
      t.string :model
      t.string :chassi
      t.string :document
      t.string :color
      t.string :board
      t.date :acquisition
      t.integer :cnh
      t.string :meleage_current
      t.string :locadora
      t.string :seguradora
      t.string :dinvehicle
      t.integer :kind
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
