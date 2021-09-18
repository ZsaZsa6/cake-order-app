class Customer < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true
    has_secure_password
    has_many :orders
    has_many :products, through: :orders
   
    
end
