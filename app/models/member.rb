class Member < ApplicationRecord
  belongs_to :org
  belongs_to :space
end
