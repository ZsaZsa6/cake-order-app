class CakesOrders < ApplicationRecord
    has_and_belongs_to_many :cakes
    belongs_to :order

end
