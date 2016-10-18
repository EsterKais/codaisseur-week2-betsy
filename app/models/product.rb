class Product < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :orders, dependent: :destroy
  has_many :buyer, through: :orders, source: :user
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





# ----this is for the search form that can search only by race, not currently in use ------
  # def self.search(search)
  #   if search
  #     where(["race LIKE ?", "%#{search}%"])
  #   else
  #     all
  #   end
  # end

end
