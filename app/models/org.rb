class Org < ApplicationRecord
  has_many :spaces
  has_many :members
end
