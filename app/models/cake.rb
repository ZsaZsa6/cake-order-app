class Cake < ApplicationRecord
    belongs_to :product
    
    has_many :tiers
    accepts_nested_attributes_for :tiers
    
end
