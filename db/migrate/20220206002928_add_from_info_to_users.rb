class AddFromInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :address, :string
    add_column :users, :country, :string
    add_column :users, :province, :string
    add_column :users, :postal_code, :string
  end
end
