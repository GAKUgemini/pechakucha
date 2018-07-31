class User < ApplicationRecord

  has_many :notecomments

  has_many :mores
  has_many :more_notes, through: :mores, source: 'note'
  has_many :goods
  has_many :good_tweets, through: :goods, source: 'tweet'
  has_many :tweets
  has_many :notes
  # フォロー機能関係のコード
  has_many :active_relationships,class_name:  "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships,class_name:  "Relationship", foreign_key: "following_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :following
  has_many :followers, through: :passive_relationships, source: :follower

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  has_secure_password

  mount_uploader :image, ImageUploader

  # ユーザーをフォローする
  def follow(other_user)
    active_relationships.create(following_id: other_user.id)
  end

  # ユーザーをアンフォローする
  def unfollow(other_user)
    active_relationships.find_by(following_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_user)
    if following.ids.include?(other_user.id)
      return true
    end
      return false
  end
end
