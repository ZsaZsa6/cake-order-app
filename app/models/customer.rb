class Customer < ApplicationRecord
    has_many :cakes, through: :orders
    has_many :orders
end
