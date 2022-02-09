class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.integer :current_template
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
