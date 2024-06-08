class Post < ApplicationRecord
  validates :location, presence: true

  mount_uploader  :post_image, PostImageUploader

  # ユーザーネーム表示させるための関連付け
  belongs_to :user
end
