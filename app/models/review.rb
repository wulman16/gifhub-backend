class Review < ApplicationRecord
  belongs_to :gif
  belongs_to :user
  validates :rating, presence: true
  validates :content, presence: true

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
