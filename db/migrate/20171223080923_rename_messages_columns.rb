class RenameMessagesColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :messages, :user, :user_id
    rename_column :messages, :group, :chat_group_id
  end
end
