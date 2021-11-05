class RemoveBedroomsFromQuotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :quotes, :bedrooms, :integer
  end
end
