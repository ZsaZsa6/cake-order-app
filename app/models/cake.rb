class Cake < ApplicationRecord
    belongs_to :product, inverse_of: :cakes
    
    has_many :tiers
    accepts_nested_attributes_for :tiers
    
end
