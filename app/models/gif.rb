class Gif < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def gif_json
    {
      id: self.id,
      url: self.url,
      title: self.title,
      reviews: self.reviews.collect(&:review_json)
    }
  end

  def self.gif_json
    Gif.all.collect(&:gif_json)
  end
end
