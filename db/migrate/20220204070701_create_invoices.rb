class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.string :from_full_name
      t.string :from_email
      t.integer :from_phone
      t.string :from_address
      t.string :from_country
      t.string :from_province
      t.string :from_postal_code
      t.string :from_notes
      t.string :to_full_name
      t.string :to_email
      t.integer :to_phone
      t.string :to_address
      t.string :to_country
      t.string :to_province
      t.string :to_postal_code
      t.string :to_notes
      t.string :status

      t.timestamps
    end
  end
end
