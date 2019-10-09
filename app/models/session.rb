class Session < ApplicationRecord
  belongs_to :student
  belongs_to :instructor
  belongs_to :admin
end
