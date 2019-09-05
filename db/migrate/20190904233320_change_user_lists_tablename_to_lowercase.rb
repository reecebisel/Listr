class ChangeUserListsTablenameToLowercase < ActiveRecord::Migration[5.2]
  def change
    rename_column :Lists_Users, :User_id, :user_id
    rename_column :Lists_Users, :List_id, :list_id
    
    rename_table :Lists_Users, :lists_users
  end
end
