class Product < ApplicationRecord
  belongs_to :user
  has_many :photos
  # adding validations
  validates :race, presence: true
  validates :amount, presence: true
  validates :price, presence: true

end
