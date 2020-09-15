class Cake < ApplicationRecord
    has_many :customers, through: :orders
    
end
