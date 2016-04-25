class Space < ApplicationRecord
  belongs_to :org
  validates :name, presence: true
end
