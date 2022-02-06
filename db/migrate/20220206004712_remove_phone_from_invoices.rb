class RemovePhoneFromInvoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :invoices, :from_phone, :string
    remove_column :invoices, :to_phone, :string
  end
end
