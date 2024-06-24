class Authentication < ApplicationRecord
  # グーグルログイン
  belongs_to :user
end
