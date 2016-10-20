class Product < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :line_items
  # adding validations
  validates :race, presence: true
  validates :amount, presence: true
  validates :price, presence: true

  scope :affordable,     -> { where('price <= ?', 400)  }
  scope :edible,         -> { where(edible: true) }
  scope :by_race,        -> { order(:race) }
  scope :europe,         -> { where(country_origin: "Europe") }
  scope :north_america,  -> { where(country_origin: "North-America") }
  scope :asia,           -> { where(country_origin: "Asia") }
  scope :latino,         -> { where(country_origin: "Latino") }
  # Ester trying out filters
  scope :female,         -> { where(gender: "Female")}
  scope :male,           -> { where(gender: "Male")}
  scope :young,          -> { where('age <= ?', 5) }
  scope :mature,         -> { where('age <= ? AND age > ?', 10, 5) }
  scope :old,            -> { where('age > ?', 10) }

# SEARCH STUFF
  def self.search(search)
    Product.where('name ILIKE :search OR race ILIKE :search OR color ILIKE :search OR description ILIKE :search', search: "%#{search}%")
  end

end
