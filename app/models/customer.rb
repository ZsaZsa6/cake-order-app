class Customer < ApplicationRecord
    has_many :orders
    has_many :cakes, through: :orders
    
end
