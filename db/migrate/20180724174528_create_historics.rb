class CreateHistorics < ActiveRecord::Migration[5.2]
  def change
    create_table :historics do |t|
      t.date :event_date
      t.string :event_desc
      t.integer :mileage
      t.decimal :valor
      t.integer :nr_tribute_note
      t.references :vehicle, foreign_key: true
      t.integer :user_id
      t.text :note

      t.timestamps
    end
  end
end
