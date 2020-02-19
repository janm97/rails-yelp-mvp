class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'], message: '%{value} is not a valid size' }

  def average_rating
    sum = 0
    num_reviews = reviews.length
    reviews.each do |review|
      sum += review.rating
    end
    if num_reviews == 0
      return 0
    else
      return sum / num_reviews
    end
  end
end
