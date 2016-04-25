class Member < ApplicationRecord
  belongs_to :org
  validates :email, presence: true
  validates_uniqueness_of :email, case_sensitive: false
end
