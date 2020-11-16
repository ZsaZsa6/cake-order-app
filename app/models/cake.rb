class Cake < ApplicationRecord
    belongs_to :order, inverse_of: :cakes
    validates_presence_of :order
    has_many :tiers
    
end
