class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :cake
end
