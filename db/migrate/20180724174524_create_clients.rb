class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :registration
      t.string :rg
      t.string :cpf
      t.string :phone
      t.references :user, foreign_key: true
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
