class CreateProparties < ActiveRecord::Migration[7.0]
  def change
    create_table :proparties do |t|
      t.references :account
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathroom
      t.string  :photo

      t.timestamps
    end
  end
end
