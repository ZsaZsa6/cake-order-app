class Donut > ApplicationRecord
    belongs_to :item
    has_many :frostings
    has_many :decorations
    has_many :flavors

end