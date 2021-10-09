class Product < ApplicationRecord
    belongs_to :order
    has_many :cakes
    accepts_nested_attributes_for :cakes
    has_many :donuts
    accepts_nested_attributes_for :donuts
    has_many :cupcakes
    accepts_nested_attributes_for :cupcakes
    
end
