class AddCityFieldsToInvoices < ActiveRecord::Migration[6.1]
  def change
    add_column :invoices, :from_city, :string
    add_column :invoices, :to_city, :string
  end
end
