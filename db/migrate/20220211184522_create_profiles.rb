class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :current_template
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
