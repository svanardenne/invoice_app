class AddTemplateNameToInvoiceTemplates < ActiveRecord::Migration[6.1]
  def change
    add_column :invoice_templates, :template_name, :string
  end
end
