class Cake < ApplicationRecord
    belongs_to :order
    has_many :tiers
    
end
