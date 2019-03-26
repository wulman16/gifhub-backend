class User < ApplicationRecord
  has_many :reviews
  has_many :gifs, through: :reviews
  validates :name, presence: true
end
