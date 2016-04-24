class Space < ApplicationRecord
  belongs_to :org
  has_many :members
  validates :name, presence: true
end
