class Review < ApplicationRecord
  belongs_to :gif
  belongs_to :user

  def review_json
    {
      id: self.id,
      gif_id: self.gif_id,
      user_id: self.user_id,
      user_name: self.user.name,
      rating: self.rating,
      content: self.content
    }
  end
end
