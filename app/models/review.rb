class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: {only_integer: true, greater_than: -1, less_than: 6}
  validates :content, presence: true
end
