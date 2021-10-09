class Product < ApplicationRecord
    belongs_to :order
    has_many :cake_tiers
    accepts_nested_attributes_for :cake_tiers
    has_many :donuts
    accepts_nested_attributes_for :donuts
    has_many :cupcakes
    accepts_nested_attributes_for :cupcakes
    
end
