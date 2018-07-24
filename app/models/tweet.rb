class Tweet < ApplicationRecord
  has_many :goods
  has_many :good_users, through: :goods, source: 'user'
  has_many :comments
  belongs_to :user
  validates :text, presence: true
end
