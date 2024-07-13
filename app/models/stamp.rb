class Stamp < ApplicationRecord
  belongs_to :user
  validates :image_url, presence: true
  #mount_uploader :image_url, ImageUploader

  # def remote_image_url=(url)
    #self.image_url = URI.parse(url).open
  #end
end
