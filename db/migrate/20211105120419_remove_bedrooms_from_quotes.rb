class RemoveBedroomsFromQuotes < ActiveRecord::Migration[6.1]
  def up
    remove_column :quotes, :bedrooms, :integer
  end
  def down
    add_column :quotes, :bedrooms, :integer
  end
end
