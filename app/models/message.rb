class Message < ApplicationRecord
    belongs_to :user
    belongs_to :chat_group
    mount_uploader :image, ImageUploader
end
