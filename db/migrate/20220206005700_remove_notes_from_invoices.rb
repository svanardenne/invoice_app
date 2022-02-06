class RemoveNotesFromInvoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :invoices, :from_notes, :string
    remove_column :invoices, :to_notes, :string
  end
end
