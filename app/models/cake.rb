class Cake < ApplicationRecord
    belongs_to :items, inverse_of: :cakes
    
    has_many :tiers
    accepts_nested_attributes_for :tiers
    
end
