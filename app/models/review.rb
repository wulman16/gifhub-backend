class Review < ApplicationRecord
  belongs_to :gif
  belongs_to :user

  def review_json
    {
      id: self.id,
      gif_id: self.gif_id,
      user_id: self.user_id,
      rating: self.rating,
      content: self.content
    }
  end
end
