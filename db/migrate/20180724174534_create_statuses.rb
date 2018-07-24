class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :delivery_meleage
      t.string :fuel
      t.string :bodywork
      t.string :tires
      t.text :note
      t.integer :user_id

      t.timestamps
    end
  end
end
