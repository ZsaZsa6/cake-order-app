class Order < ApplicationRecord
    belongs_to :customer
    has_many :products, dependent: :destroy, inverse_of: :order
    accepts_nested_attributes_for :products
end
