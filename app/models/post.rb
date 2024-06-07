class Post < ApplicationRecord
  validates :location, presence: true

  mount_uploader  :post_image, PostImageUploader
end
