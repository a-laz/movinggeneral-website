class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.integer :bedrooms
      t.datetime :move_date
      t.integer :phone

      t.timestamps
    end
  end
end
