class Post < ApplicationRecord
  validates :address, presence: true
  validates :title, presence: true

  mount_uploader  :post_image, PostImageUploader

  # ユーザーネーム表示させるための関連付け
  belongs_to :user

  # PostモデルにGeocodingを適用することを指定
  geocoded_by :address

  # geocodeメソッドを呼び出す
  after_validation :geocode
end
