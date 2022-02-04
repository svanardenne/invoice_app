class CreateInvoiceItems < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_items do |t|
      t.date :date
      t.text :description
      t.decimal :hours
      t.decimal :price
      t.decimal :amount

      t.timestamps
    end
  end
end
