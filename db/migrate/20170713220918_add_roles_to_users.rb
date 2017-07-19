class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :vendedor, :boolean
    add_column :users, :user_role, :boolean
  end
end
