class CakeOrder < ApplicationRecord
    belongs_to :customer
    has_and_belongs_to_many :cakes
    belongs_to :order

end
