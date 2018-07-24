class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :description
      t.integer :optional
      t.text :note

      t.timestamps
    end
  end
end
