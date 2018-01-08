class ChatGroup < ApplicationRecord
  validates :group_name, presence: true
  has_many :messages
  has_many :users, through: :members
  has_many :members

  def show_last_message
    if (last_message = messages.last).present?
      if last_message.image.present?
       '画像が投稿されています'
      else
        messages.body
      end
    else
      'まだメッセージはありません。'
    end
  end
end
