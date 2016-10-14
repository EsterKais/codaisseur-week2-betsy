class User < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one :profile
  has_many :orders, dependent: :destroy
  has_many :ordered_products, through: :orders, source: :product

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def has_profile?
   profile.present?
 end

 def full_name
   profile.full_name
 end

 def bio
    profile.bio
 end

end
