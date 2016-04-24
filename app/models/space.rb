class Space < ApplicationRecord
  belongs_to :org
  has_many :members
end
