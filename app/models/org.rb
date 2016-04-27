class Org < ApplicationRecord
  has_many :spaces
  has_many :members
  has_many :apps, through: :spaces
  validates :name, presence: true
end
