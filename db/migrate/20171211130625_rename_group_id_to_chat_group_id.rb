class RenameGroupIdToChatGroupId < ActiveRecord::Migration[5.0]
  def change
    rename_column :members, :group_id, :chat_group_id
  end
end
