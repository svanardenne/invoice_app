class CreateInvoiceTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_templates do |t|
      t.string :to_full_name
      t.string :to_email
      t.string :to_phone
      t.string :to_address
      t.string :to_city
      t.string :to_province
      t.string :to_country
      t.string :to_postal_code
      t.string :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
