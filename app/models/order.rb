class Order < ApplicationRecord
    belongs_to :customer
    has_many :items, dependent: :destroy, inverse_of: :order
    accepts_nested_attributes_for :items
end
