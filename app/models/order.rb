class Order < ApplicationRecord
    belongs_to :customer
    has_many :cakes, dependent: :destroy
    accepts_nested_attributes_for :cakes
end
