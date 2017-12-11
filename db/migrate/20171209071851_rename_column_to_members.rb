class RenameColumnToMembers < ActiveRecord::Migration[5.0]
  def change
    rename_column :members, :user, :user_id
    rename_column :members, :group, :group_id
  end
end
