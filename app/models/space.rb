class Space < ApplicationRecord
  belongs_to :org
  has_many :apps
  validates :name, presence: true
end
