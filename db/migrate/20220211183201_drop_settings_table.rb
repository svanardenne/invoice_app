class DropSettingsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :settings do |t|
      t.string :current_template, null: false
      t.timestamps null: false
    end
  end
end
