class Order < ApplicationRecord
    belongs_to :customer
    has_many :cakes, dependent: :destroy, inverse_of: :order
    accepts_nested_attributes_for :cakes
end
