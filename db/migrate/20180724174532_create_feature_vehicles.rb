class CreateFeatureVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_vehicles do |t|
      t.decimal :Valeu
      t.text :date_last_change
      t.text :note

      t.timestamps
    end
  end
end
