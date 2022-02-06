class RemoveNameFromInvoiceTemplates < ActiveRecord::Migration[6.1]
  def change
    remove_column :invoice_templates, :name, :string
  end
end
