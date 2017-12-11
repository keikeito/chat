class RenameGroupToChatGroups < ActiveRecord::Migration[5.0]
  def change
    rename_table :Groups, :Chat_Groups
  end
end
