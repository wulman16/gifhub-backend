class Review < ApplicationRecord
  belongs_to :gif
  belongs_to :user
end
