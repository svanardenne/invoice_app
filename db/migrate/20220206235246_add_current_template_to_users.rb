class AddCurrentTemplateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :current_template, :integer
  end
end
