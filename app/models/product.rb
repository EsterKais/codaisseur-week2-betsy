class Product < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :orders, dependent: :destroy
  has_many :buyer, through: :orders, source: :user
  # adding validations
  validates :race, presence: true
  validates :amount, presence: true
  validates :price, presence: true

  scope :affordable,     -> { where('price < ?', 400)  }
  scope :edible,         -> { where(edible: true) }
  scope :race,           -> { order(:race) }
  scope :country_of_origin, -> (country) { where("country_origin LIKE ?", country) }


  def self.search(search)
    if search
      where(["race LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
