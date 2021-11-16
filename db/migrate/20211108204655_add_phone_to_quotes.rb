class AddPhoneToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :phone, :bigint
  end
end
