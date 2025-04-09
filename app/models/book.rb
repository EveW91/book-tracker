class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, :author, :genre, presence: true
  validates :status, inclusion: { in: ["want-to-read", "currently-reading", "read" ] }
end
