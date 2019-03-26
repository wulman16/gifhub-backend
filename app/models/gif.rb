class Gif < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def gif_json
    {
      id: self.id,
      url: self.url,
      title: self.title,
      reviews: self.reviews
    }
  end
end
