class Tier < ApplicationRecord
    validates_presence_of :cake
    belongs_to :cake
end
