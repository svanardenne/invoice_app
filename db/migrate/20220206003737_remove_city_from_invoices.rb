class RemoveCityFromInvoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :invoices, :city, :string
  end
end
