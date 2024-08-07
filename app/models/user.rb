class User < ApplicationRecord
  authenticates_with_sorcery!

  attr_accessor :password_confirmation

  validates :name, length: { minimum: 3 }, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  # ユーザーネーム関連付けるため
  has_many :posts

  # マイページ画像
  mount_uploader :avatar, AvatarUploader

  # 道の駅スタンプラリー
  has_many :stamps
end
