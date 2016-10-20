class User < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one :profile
  has_many :orders

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

 # doesn't seem to break anything - leaving it in just in case
 # def bio
 #    profile.bio
 # end

end
