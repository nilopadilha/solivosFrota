class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :Frequency
      t.text :note

      t.timestamps
    end
  end
end