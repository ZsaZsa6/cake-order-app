class CupCakes < ApplicationController
    belongs_to :items
    has_many :flavors
    has_many :frostings
    has_many :decorations
    

end