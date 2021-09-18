class Product < ApplicationRecord
    belongs_to :order
    has_many :cakes
    has_many :donuts
    has_many :cupcakes
    
end
