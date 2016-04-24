class Org < ApplicationRecord
  has_many :spaces
  has_many :members
  validates :name, presence: true
end
