class Post < ApplicationRecord
  validates :location, presence: true
end
