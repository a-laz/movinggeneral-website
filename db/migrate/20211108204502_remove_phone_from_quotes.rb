class RemovePhoneFromQuotes < ActiveRecord::Migration[6.1]
  def up
    remove_column :quotes, :phone
  end
  def down
    add_column :quotes, :phone, :integer
  end
end
