class Cake < ApplicationRecord
    belongs_to :order, inverse_of: :cakes
    validates_presence_of :order
    has_many :tiers
    accepts_nested_attributes_for :tiers
    
end
