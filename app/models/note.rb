class Note < ApplicationRecord
  has_many :notecomments
  has_many :mores
  has_many :more_users, through: :mores, source: 'user'
  belongs_to :user
end
