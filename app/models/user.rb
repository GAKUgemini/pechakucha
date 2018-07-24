class User < ApplicationRecord
  has_many :goods
  has_many :good_tweets, through: :goods, source: 'tweet'
  has_many :tweets
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  has_secure_password
end
