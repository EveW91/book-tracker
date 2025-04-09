class Review < ApplicationRecord
  belongs_to :book

  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :review, presence: true
end
