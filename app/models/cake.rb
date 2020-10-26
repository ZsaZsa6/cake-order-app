class Cake < ApplicationRecord
    belongs_to :order
    has_and_belongs_to_many :cake_order
  
end
