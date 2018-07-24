class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :specialty
      t.string :service_desc
      t.string :contact_name
      t.references :historic, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
