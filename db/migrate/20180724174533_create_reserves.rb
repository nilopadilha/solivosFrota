class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.string :motivate
      t.string :meleageEstimated
      t.date :reserve_date
      t.references :vehicle, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
