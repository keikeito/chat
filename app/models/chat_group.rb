class ChatGroup < ApplicationRecord
  validates :group_name, presence: true
  has_many :users, through: :members
  has_many :members
end
