class RemoveCurrentTemplateFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :current_template, :integer
  end
end
