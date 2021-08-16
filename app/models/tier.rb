class Tier < ApplicationRecord
    validates_presence_of :cake
    has_many :flavors
    has_many :frostings
    has_many :decorations

    belongs_to :cake
end
