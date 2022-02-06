class AddPhoneToInvoices < ActiveRecord::Migration[6.1]
  def change
    add_column :invoices, :from_phone, :string
    add_column :invoices, :to_phone, :string
  end
end
