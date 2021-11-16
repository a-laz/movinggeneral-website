class RemovePhoneFromQuotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :quotes, :phone
  end
end
