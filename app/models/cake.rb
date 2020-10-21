class Cake < ApplicationRecord
    belongs_to :order
    has_many :orders
    has_many :customers, through: :orders
    
end
